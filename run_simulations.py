import os
import pandas as pd

# Define los rangos de los parámetros
offset0_values = [50, 75, 100]
duration0_values = [(5, 5), (10, 5), (15, 5)]
offset1_values = [50, 75, 100]
duration1_values = [(10, 5), (20, 5), (25, 5)]

results = []

# Ejecutar simulaciones para cada combinación de parámetros
for offset0 in offset0_values:
    for duration0 in duration0_values:
        for offset1 in offset1_values:
            for duration1 in duration1_values:
                # Crear archivo .ini dinámicamente
                with open("omnetpp.ini", "r") as f:
                    ini_content = f.read()

                ini_content = ini_content.replace("${S1_offset0=100ms}", f"{offset0}ms")
                ini_content = ini_content.replace("${S1_duration0=[10ms, 5ms]}", f"[{duration0[0]}ms, {duration0[1]}ms]")
                ini_content = ini_content.replace("${S1_offset1=75ms}", f"{offset1}ms")
                ini_content = ini_content.replace("${S1_duration1=[20ms, 3ms]}", f"[{duration1[0]}ms, {duration1[1]}ms]")

                with open("omnetpp.ini", "w") as f:
                    f.write(ini_content)

                print(f"Archivo .ini creado y escrito con parámetros: offset0={offset0}, duration0={duration0}, offset1={offset1}, duration1={duration1}")
                
                # Ejecutar simulación
                simulation_result = os.system("opp_run -u Cmdenv -f omnetpp.ini -c Run0")
                if simulation_result != 0:
                    print(f"Error en la ejecución de la simulación con parámetros: offset0={offset0}, duration0={duration0}, offset1={offset1}, duration1={duration1}")
                    continue
                
                print("Simulación completada")

                # Analizar resultados y agregar a la lista de resultados
                vector_file = "results/General-#0.vec"
                print(f"Analizando archivo: {vector_file}")

                try:
                    # Leer archivo ignorando líneas problemáticas
                    result_data = pd.read_csv(vector_file, delimiter='\t', on_bad_lines='skip', comment='#')
                    print("Archivo de resultados leído")

                    # Filtrar solo las líneas que contienen los datos del vector 'endToEndDelay'
                    vector_data = result_data[result_data.iloc[:, 3] == 'endToEndDelay:vector']
                    print(f"Datos del vector 'endToEndDelay' encontrados: {len(vector_data)} entradas")

                    if not vector_data.empty:
                        # Calcular el valor medio del vector
                        end_to_end_delay = vector_data.iloc[:, 5].astype(float).mean()
                        queueing_time = 0  # Establecer en 0 si no existe
                    else:
                        print(f"Error: Datos del vector 'endToEndDelay' no encontrados en {vector_file}")
                        continue

                    results.append((offset0, duration0, offset1, duration1, end_to_end_delay, queueing_time))

                except FileNotFoundError:
                    print(f"Error: Archivo {vector_file} no encontrado.")
                except pd.errors.ParserError as e:
                    print(f"Error al procesar el archivo {vector_file} (ParserError): {e}")
                except Exception as e:
                    print(f"Error al procesar el archivo {vector_file}: {e}")

print("Creando DataFrame con los resultados")
# Crear DataFrame con los resultados
results_df = pd.DataFrame(results, columns=['offset0', 'duration0', 'offset1', 'duration1', 'end_to_end_delay', 'queueing_time'])

print("Guardando resultados en un archivo CSV")
# Guardar resultados en un archivo CSV
results_df.to_csv("optimization_results.csv", index=False)

print("Optimization complete. Results saved to optimization_results.csv")
