package inet.showcases.tsn.combiningfeatures.invehicle;
import inet.networks.base.TsnNetworkBase;
import inet.node.contract.IEthernetNetworkNode;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.tsn.TsnSwitch;
import ned.IdealChannel;
import inet.node.ethernet.EthernetLink;

network InVehicleNetworkShowcase extends TsnNetworkBase
{
    @display("bgb=3866.3499,3582.8");
    types:
        // Distancias: 3m, 5m, 10m, 15m, 20m, 25m, 30m, 35m, 40m, 45m, 50m

channel Eth100M_3m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 15.15ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_5m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 25.25ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_10m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 50.5ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_15m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 75.75ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_20m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 101ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_25m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 126.25ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_30m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 151.5ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_35m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 176.75ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_40m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 202ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_45m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 227.25ns;
    ber = 0;
    @display("ls=,3");
}

channel Eth100M_50m extends ned.DatarateChannel
{
    datarate = 100Mbps;
    delay = 252.5ns;
    ber = 0;
    @display("ls=,3");
}


    submodules:

        S1: TsnSwitch {
            @display("p=839.28253,294.27127");
            gates:
                ethg[18];  // Define the size of the vector gate
        }
        SECC1COM: StandardHost {
            @display("p=394.14178,234.20018");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        SECC1MON: StandardHost {
            @display("p=428.41498,211.3514");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        S11: TsnSwitch {
            @display("p=1874.2101,295.75003");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        ECGC1COM: StandardHost {
            @display("p=691.17615,205.63919");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECGC1MON: StandardHost {
            @display("p=776.85913,208.49529");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECSC1MON: StandardHost {
            @display("p=594.0688,205.63919");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECSC1COM: StandardHost {
            @display("p=519.8102,208.49529");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECGC2COM: StandardHost {
            @display("p=2222.0457,202.78308");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECGC2MON: StandardHost {
            @display("p=2307.7288,205.63919");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECSC2COM: StandardHost {
            @display("p=2050.6797,205.63919");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECSC2MON: StandardHost {
            @display("p=2124.9382,202.78308");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        SECC2COM: StandardHost {
            @display("p=1927.8674,234.20018");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        SECC2MON: StandardHost {
            @display("p=1959.2845,211.3514");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        S111: TsnSwitch {
            @display("p=1487.2001,490.10004");
            gates:
                ethg[12];  // Define the size of the vector gate
        }
        ECGC3COM: StandardHost {
            @display("p=1276.6766,262.7612");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECGC3MON: StandardHost {
            @display("p=1342.367,262.7612");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECSC3COM: StandardHost {
            @display("p=1510.8768,262.7612");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECSC3MON: StandardHost {
            @display("p=1613.6964,262.7612");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        S2: TsnSwitch {
            @display("p=836.55,1225.25");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        S22: TsnSwitch {
            @display("p=1884.3501,1225.2501");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        S3: TsnSwitch {
            @display("p=851.75995,1701.83");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        S33: TsnSwitch {
            @display("p=1884.35,1701.83");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        S4: TsnSwitch {
            @display("p=850.07,2107.43");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        S44: TsnSwitch {
            @display("p=1897.87,2095.5999");
            gates:
                ethg[16];  // Define the size of the vector gate
        }
        EEC1A: StandardHost {
            @display("p=267.65,699.6");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC1B: StandardHost {
            @display("p=267.65,781.75");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC2B: StandardHost {
            @display("p=267.65,975.2");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC2A: StandardHost {
            @display("p=267.65,1078.5499");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC3B: StandardHost {
            @display("p=2218.05,699.6");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC3A: StandardHost {
            @display("p=2218.05,781.75");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC4B: StandardHost {
            @display("p=2218.05,1075.9");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        EEC4A: StandardHost {
            @display("p=2218.05,975.2");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IOM1: StandardHost {
            @display("p=511.90097,373.49");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        ADIRU1: StandardHost {
            @display("p=584.402,417.42996");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FM1: StandardHost {
            @display("p=656.90295,399.85397");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        L1: StandardHost {
            @display("p=896.376,566.826");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        L2: StandardHost {
            @display("p=951.30096,566.826");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        CDAM: StandardHost {
            @display("p=1495.6501,1193.1401");
            gates:
                ethg[9];  // Define the size of the vector gate
        }
        ADIRU2: StandardHost {
            @display("p=2202.07,388.70004");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FM2: StandardHost {
            @display("p=2273.05,371.80002");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IOM2: StandardHost {
            @display("p=2129.4001,344.76004");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        R2: StandardHost {
            @display("p=1777.8801,525.59");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        R1: StandardHost {
            @display("p=1831.9601,525.59");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ADIRU3: StandardHost {
            @display("p=1372.2802,561.08");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FM3: StandardHost {
            @display("p=1586.9102,576.29004");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        L3: StandardHost {
            @display("p=1102.8939,973.27094");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        C1: StandardHost {
            @display("p=1254.4869,812.88995");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        C2: StandardHost {
            @display("p=1254.4869,973.27094");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        R3: StandardHost {
            @display("p=1410.4739,973.27094");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ATC1: StandardHost {
            @display("p=1235.3901,1046.1101");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ACR1: StandardHost {
            @display("p=1051.18,1022.4501");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FW1: StandardHost {
            @display("p=623,1181");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        AESU1: StandardHost {
            @display("p=623,1268");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IOM3: StandardHost {
            @display("p=623,1354");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        SCI1: StandardHost {
            @display("p=584.402,1551.0819");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        AESU2: StandardHost {
            @display("p=2053.35,1228.6301");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FW2: StandardHost {
            @display("p=2053.35,1142.4401");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IOM4: StandardHost {
            @display("p=2053.35,1314.8201");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        SCI2: StandardHost {
            @display("p=1799.3429,1515.9299");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ATC2: StandardHost {
            @display("p=1681.5502,1076.53");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ACR2: StandardHost {
            @display("p=1828.5801,1022.4501");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ELM1: StandardHost {
            @display("p=910.91,1314.82");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        HSM1: StandardHost {
            @display("p=910.91,1426.36");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ELM2: StandardHost {
            @display("p=1561.5599,1314.82");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        HSM2: StandardHost {
            @display("p=1561.5599,1426.36");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FuelCOM1: StandardHost {
            @display("p=657.41,1630.85");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FuelMON1: StandardHost {
            @display("p=572.91,1630.85");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        LGTRRSMON1: StandardHost {
            @display("p=327.86,1799.85");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        LGTRRSCOM1: StandardHost {
            @display("p=400.53,1818.44");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IRDC1: StandardHost {
            @display("p=486.72,2039.83");
            gates:
                ethg[3];  // Define the size of the vector gate
        }
        FuelCOM2: StandardHost {
            @display("p=2186.8599,1688.3099");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        FuelMON2: StandardHost {
            @display("p=2102.3599,1688.3099");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IRDC2: StandardHost {
            @display("p=2016.1699,2097.29");
            gates:
                ethg[3];  // Define the size of the vector gate
        }
        LGTRRSCOM2: StandardHost {
            @display("p=1929.98,1874.21");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        LGTRRSMON2: StandardHost {
            @display("p=1857.3099,1855.62");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        ECB: StandardHost {
            @display("p=997.1,1644.37");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        CIDS1: StandardHost {
            @display("p=964.99,1798.1599");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        PWCU: StandardHost {
            @display("p=757.12,1902.94");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        extLights: StandardHost {
            @display("p=1455.09,1630.85");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        CIDS: StandardHost {
            @display("p=1492.27,1798.1599");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        PESC: StandardHost {
            @display("p=1541.2799,1960.3999");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        IPCU1: StandardHost {
            @display("p=1029.21,1867.45");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        IPCU2: StandardHost {
            @display("p=1786.33,1936.74");
            gates:
                ethg[3];  // Define the size of the vector gate
        }
        VSC: StandardHost {
            @display("p=610.08997,2021.24");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
        SPDB1: StandardHost {
            @display("p=593.19006,2053.35");
            gates:
                ethg[4];  // Define the size of the vector gate
        }
        SPDB2: StandardHost {
            @display("p=1935.0502,2051.6602");
            gates:
                ethg[5];  // Define the size of the vector gate
        }
        CPIOMA12: StandardHost {
            @display("p=738.53,2169.9602");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        CPIOMB12: StandardHost {
            @display("p=850.07007,2193.62");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        DSMC12: StandardHost {
            @display("p=978.5101,2077.0103");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        CPIOMB34: StandardHost {
            @display("p=1794.7802,2169.9602");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        CPIOMA34: StandardHost {
            @display("p=1654.5101,2169.9602");
            gates:
                ethg[2];  // Define the size of the vector gate
        }
        DSMC3: StandardHost {
            @display("p=1436.5001,2077.0103");
            gates:
                ethg[1];  // Define the size of the vector gate
        }
    connections allowunconnected:
        SECC1COM.ethg[0] <--> Eth100M_3m <--> S1.ethg[0];
        SECC1MON.ethg[0] <--> Eth100M_3m <--> S1.ethg[1];
        S1.ethg[2] <--> Eth100M_5m <--> S11.ethg[0];
        ECSC1COM.ethg[0] <--> Eth100M_3m <--> S1.ethg[3];
        ECSC1MON.ethg[0] <--> Eth100M_3m <--> S1.ethg[4];
        ECGC1COM.ethg[0] <--> Eth100M_3m <--> S1.ethg[5];
        ECGC1MON.ethg[0] <--> Eth100M_3m <--> S1.ethg[6];
        SECC2COM.ethg[0] <--> Eth100M_3m <--> S11.ethg[1];
        SECC2MON.ethg[0] <--> Eth100M_3m <--> S11.ethg[2];
        ECSC2COM.ethg[0] <--> Eth100M_3m <--> S11.ethg[3];
        ECSC2MON.ethg[0] <--> Eth100M_3m <--> S11.ethg[4];
        ECGC2COM.ethg[0] <--> Eth100M_3m <--> S11.ethg[5];
        ECGC2MON.ethg[0] <--> Eth100M_3m <--> S11.ethg[6];
        S1.ethg[7] <--> Eth100M_5m <--> S111.ethg[0];
        S11.ethg[7] <--> Eth100M_5m <--> S111.ethg[1];
        ECGC3COM.ethg[0] <--> Eth100M_3m <--> S111.ethg[2];
        ECGC3MON.ethg[0] <--> Eth100M_3m <--> S111.ethg[3];
        ECSC3COM.ethg[0] <--> Eth100M_3m <--> S111.ethg[4];
        ECSC3MON.ethg[0] <--> Eth100M_3m <--> S111.ethg[5];
        S1.ethg[8] <--> Eth100M_30m <--> S2.ethg[0];
        S11.ethg[8] <--> Eth100M_30m <--> S22.ethg[0];
        S22.ethg[1] <--> Eth100M_5m <--> S2.ethg[1];
        S111.ethg[6] <--> Eth100M_30m <--> S2.ethg[2];
        S111.ethg[7] <--> Eth100M_30m <--> S22.ethg[2];
        S2.ethg[3] <--> Eth100M_10m <--> S3.ethg[0];
        S3.ethg[1] <--> Eth100M_5m <--> S33.ethg[0];
        S22.ethg[3] <--> Eth100M_10m <--> S33.ethg[1];
        S3.ethg[2] <--> Eth100M_10m <--> S4.ethg[0];
        S4.ethg[1] <--> Eth100M_5m <--> S44.ethg[0];
        S44.ethg[1] <--> Eth100M_10m <--> S33.ethg[2];
        S1.ethg[9] <--> Eth100M_20m <--> EEC1A.ethg[0];
        S22.ethg[4] <--> Eth100M_15m <--> EEC1B.ethg[0];
        EEC2B.ethg[0] <--> Eth100M_20m <--> S111.ethg[8];
        EEC2A.ethg[0] <--> Eth100M_15m <--> S2.ethg[4];
        EEC3B.ethg[0] <--> Eth100M_15m <--> S22.ethg[5];
        EEC3A.ethg[0] <--> Eth100M_20m <--> S1.ethg[10];
        EEC4A.ethg[0] <--> Eth100M_15m <--> S2.ethg[5];
        EEC4B.ethg[0] <--> Eth100M_20m <--> S11.ethg[9];
        IOM1.ethg[0] <--> Eth100M_5m <--> S1.ethg[11];
        IOM1.ethg[1] <--> Eth100M_5m <--> S1.ethg[12];
        ADIRU1.ethg[0] <--> Eth100M_5m <--> S1.ethg[13];
        FM1.ethg[0] <--> Eth100M_5m <--> S1.ethg[14];
        L1.ethg[0] <--> Eth100M_5m <--> S1.ethg[15];
        L2.ethg[0] <--> Eth100M_5m <--> S1.ethg[16];
        CDAM.ethg[0] <--> Eth100M_5m <--> S1.ethg[17];
        CDAM.ethg[1] <--> Eth100M_5m <--> S111.ethg[9];
        CDAM.ethg[2] <--> Eth100M_5m <--> S11.ethg[10];
        CDAM.ethg[3] <--> Eth100M_5m <--> S2.ethg[6];
        CDAM.ethg[4] <--> Eth100M_5m <--> S22.ethg[6];
        CDAM.ethg[5] <--> Eth100M_35m <--> S3.ethg[3];
        CDAM.ethg[6] <--> Eth100M_35m <--> S33.ethg[3];
        CDAM.ethg[7] <--> Eth100M_45m <--> S4.ethg[2];
        CDAM.ethg[8] <--> Eth100M_45m <--> S44.ethg[2];
        R1.ethg[0] <--> Eth100M_5m <--> S11.ethg[11];
        R2.ethg[0] <--> Eth100M_5m <--> S11.ethg[12];
        IOM2.ethg[0] <--> Eth100M_5m <--> S11.ethg[13];
        IOM2.ethg[1] <--> Eth100M_5m <--> S11.ethg[14];
        FM2.ethg[0] <--> Eth100M_5m <--> S11.ethg[15];
        ADIRU3.ethg[0] <--> Eth100M_5m <--> S111.ethg[10];
        FM3.ethg[0] <--> Eth100M_5m <--> S111.ethg[11];
        R3.ethg[0] <--> Eth100M_15m <--> S22.ethg[7];
        C2.ethg[0] <--> Eth100M_15m <--> S22.ethg[8];
        L3.ethg[0] <--> Eth100M_15m <--> S2.ethg[7];
        C1.ethg[0] <--> Eth100M_15m <--> S2.ethg[8];
        ATC1.ethg[0] <--> Eth100M_15m <--> S2.ethg[9];
        ACR1.ethg[0] <--> Eth100M_15m <--> S2.ethg[10];
        FW1.ethg[0] <--> Eth100M_15m <--> S2.ethg[11];
        AESU1.ethg[0] <--> Eth100M_15m <--> S2.ethg[12];
        IOM3.ethg[0] <--> Eth100M_15m <--> S2.ethg[13];
        SCI1.ethg[0] <--> Eth100M_15m <--> S2.ethg[14];
        ATC2.ethg[0] <--> Eth100M_15m <--> S22.ethg[9];
        ACR2.ethg[0] <--> Eth100M_15m <--> S22.ethg[10];
        FW2.ethg[0] <--> Eth100M_15m <--> S22.ethg[11];
        AESU2.ethg[0] <--> Eth100M_15m <--> S22.ethg[12];
        IOM4.ethg[0] <--> Eth100M_15m <--> S22.ethg[13];
        SCI2.ethg[0] <--> Eth100M_15m <--> S22.ethg[14];
        IOM3.ethg[1] <--> Eth100M_15m <--> S2.ethg[15];
        IOM4.ethg[1] <--> Eth100M_15m <--> S22.ethg[15];
        HSM1.ethg[0] <--> Eth100M_10m <--> S3.ethg[4];
        ELM1.ethg[0] <--> Eth100M_10m <--> S3.ethg[5];
        HSM2.ethg[0] <--> Eth100M_10m <--> S33.ethg[4];
        ELM2.ethg[0] <--> Eth100M_10m <--> S33.ethg[5];
        FuelCOM1.ethg[0] <--> Eth100M_10m <--> S3.ethg[6];
        FuelMON1.ethg[0] <--> Eth100M_10m <--> S3.ethg[7];
        LGTRRSCOM1.ethg[0] <--> Eth100M_10m <--> S3.ethg[8];
        LGTRRSMON1.ethg[0] <--> Eth100M_10m <--> S3.ethg[9];
        IRDC1.ethg[0] <--> Eth100M_10m <--> S3.ethg[10];
        IRDC1.ethg[1] <--> Eth100M_10m <--> S3.ethg[11];
        IRDC1.ethg[2] <--> Eth100M_10m <--> S3.ethg[12];
        FuelMON2.ethg[0] <--> Eth100M_10m <--> S33.ethg[6];
        FuelCOM2.ethg[0] <--> Eth100M_10m <--> S33.ethg[7];
        LGTRRSMON2.ethg[0] <--> Eth100M_10m <--> S33.ethg[8];
        LGTRRSCOM2.ethg[0] <--> Eth100M_10m <--> S33.ethg[9];
        IRDC2.ethg[0] <--> Eth100M_10m <--> S33.ethg[10];
        IRDC2.ethg[1] <--> Eth100M_10m <--> S33.ethg[11];
        IRDC2.ethg[2] <--> Eth100M_10m <--> S33.ethg[12];
        extLights.ethg[0] <--> Eth100M_10m <--> S33.ethg[13];
        CIDS.ethg[0] <--> Eth100M_10m <--> S33.ethg[14];
        PESC.ethg[0] <--> Eth100M_10m <--> S33.ethg[15];
        ECB.ethg[0] <--> Eth100M_10m <--> S3.ethg[13];
        CIDS1.ethg[0] <--> Eth100M_10m <--> S3.ethg[14];
        PWCU.ethg[0] <--> Eth100M_10m <--> S3.ethg[15];
        IPCU1.ethg[0] <--> Eth100M_10m <--> S4.ethg[3];
        IPCU1.ethg[1] <--> Eth100M_10m <--> S4.ethg[4];
        VSC.ethg[0] <--> Eth100M_10m <--> S4.ethg[5];
        SPDB1.ethg[0] <--> Eth100M_10m <--> S4.ethg[6];
        SPDB1.ethg[1] <--> Eth100M_10m <--> S4.ethg[7];
        SPDB1.ethg[2] <--> Eth100M_10m <--> S4.ethg[8];
        SPDB1.ethg[3] <--> Eth100M_10m <--> S4.ethg[9];
        CPIOMA12.ethg[0] <--> Eth100M_10m <--> S4.ethg[10];
        CPIOMA12.ethg[1] <--> Eth100M_10m <--> S4.ethg[11];
        CPIOMB12.ethg[0] <--> Eth100M_10m <--> S4.ethg[12];
        CPIOMB12.ethg[1] <--> Eth100M_10m <--> S4.ethg[13];
        DSMC12.ethg[0] <--> Eth100M_10m <--> S4.ethg[14];
        DSMC12.ethg[1] <--> Eth100M_10m <--> S4.ethg[15];
        DSMC3.ethg[0] <--> Eth100M_10m <--> S44.ethg[3];
        CPIOMA34.ethg[0] <--> Eth100M_10m <--> S44.ethg[4];
        CPIOMA34.ethg[1] <--> Eth100M_10m <--> S44.ethg[5];
        CPIOMB34.ethg[0] <--> Eth100M_10m <--> S44.ethg[6];
        CPIOMB34.ethg[1] <--> Eth100M_10m <--> S44.ethg[7];
        SPDB2.ethg[0] <--> Eth100M_10m <--> S44.ethg[8];
        SPDB2.ethg[1] <--> Eth100M_10m <--> S44.ethg[9];
        SPDB2.ethg[2] <--> Eth100M_10m <--> S44.ethg[10];
        SPDB2.ethg[3] <--> Eth100M_10m <--> S44.ethg[11];
        SPDB2.ethg[4] <--> Eth100M_10m <--> S44.ethg[12];
        IPCU2.ethg[0] <--> Eth100M_10m <--> S44.ethg[13];
        IPCU2.ethg[1] <--> Eth100M_10m <--> S44.ethg[14];
        IPCU2.ethg[2] <--> Eth100M_10m <--> S44.ethg[15];

}
