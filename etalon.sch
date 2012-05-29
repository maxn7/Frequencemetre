<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="entree" />
        <signal name="freq(23:0)" />
        <signal name="clk" />
        <signal name="XLXN_10" />
        <signal name="rst" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="entree" />
        <port polarity="Output" name="freq(23:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <blockdef name="clk1hz">
            <timestamp>2012-5-9T15:58:8</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="rise_detect">
            <timestamp>2012-5-9T15:4:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="compteur_front">
            <timestamp>2012-5-9T16:0:13</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <block symbolname="clk1hz" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_12" name="sortie" />
        </block>
        <block symbolname="rise_detect" name="XLXI_3">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="entree" name="entree" />
            <blockpin signalname="XLXN_1" name="front" />
        </block>
        <block symbolname="compteur_front" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="front_signal" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_10" name="front_etalon" />
            <blockpin signalname="freq(23:0)" name="frequence(23:0)" />
        </block>
        <block symbolname="rise_detect" name="XLXI_5">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_12" name="entree" />
            <blockpin signalname="XLXN_10" name="front" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1072" y="1008" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1728" y="1216" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1584" y1="848" y2="848" x1="1456" />
            <wire x2="1584" y1="848" y2="992" x1="1584" />
            <wire x2="1728" y1="992" y2="992" x1="1584" />
        </branch>
        <branch name="entree">
            <wire x2="1072" y1="976" y2="976" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="976" name="entree" orien="R180" />
        <iomarker fontsize="28" x="608" y="1184" name="clk" orien="R180" />
        <branch name="freq(23:0)">
            <wire x2="2304" y1="992" y2="992" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2304" y="992" name="freq(23:0)" orien="R0" />
        <instance x="944" y="1520" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1360" y="1472" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="944" y1="1184" y2="1184" x1="608" />
            <wire x2="928" y1="912" y2="1056" x1="928" />
            <wire x2="928" y1="1056" y2="1168" x1="928" />
            <wire x2="944" y1="1168" y2="1168" x1="928" />
            <wire x2="944" y1="1168" y2="1184" x1="944" />
            <wire x2="928" y1="1168" y2="1424" x1="928" />
            <wire x2="944" y1="1424" y2="1424" x1="928" />
            <wire x2="1344" y1="1056" y2="1056" x1="928" />
            <wire x2="1352" y1="1056" y2="1056" x1="1344" />
            <wire x2="1728" y1="1056" y2="1056" x1="1352" />
            <wire x2="1344" y1="1056" y2="1376" x1="1344" />
            <wire x2="1360" y1="1376" y2="1376" x1="1344" />
            <wire x2="1072" y1="912" y2="912" x1="928" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1728" y1="1184" y2="1184" x1="1664" />
            <wire x2="1664" y1="1184" y2="1264" x1="1664" />
            <wire x2="1808" y1="1264" y2="1264" x1="1664" />
            <wire x2="1808" y1="1264" y2="1312" x1="1808" />
            <wire x2="1808" y1="1312" y2="1312" x1="1744" />
        </branch>
        <branch name="rst">
            <wire x2="752" y1="1088" y2="1088" x1="608" />
            <wire x2="752" y1="1088" y2="1488" x1="752" />
            <wire x2="896" y1="1488" y2="1488" x1="752" />
            <wire x2="944" y1="1488" y2="1488" x1="896" />
            <wire x2="1072" y1="848" y2="848" x1="752" />
            <wire x2="752" y1="848" y2="1088" x1="752" />
            <wire x2="896" y1="1312" y2="1488" x1="896" />
            <wire x2="1312" y1="1312" y2="1312" x1="896" />
            <wire x2="1360" y1="1312" y2="1312" x1="1312" />
            <wire x2="1312" y1="1120" y2="1312" x1="1312" />
            <wire x2="1728" y1="1120" y2="1120" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="608" y="1088" name="rst" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="1344" y1="1424" y2="1424" x1="1328" />
            <wire x2="1344" y1="1424" y2="1440" x1="1344" />
            <wire x2="1360" y1="1440" y2="1440" x1="1344" />
        </branch>
    </sheet>
</drawing>