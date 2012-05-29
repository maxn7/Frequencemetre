<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="entree" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="frequence(23:0)" />
        <signal name="XLXN_6(27:0)" />
        <port polarity="Input" name="entree" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="frequence(23:0)" />
        <blockdef name="perToFreq">
            <timestamp>2012-5-21T12:55:18</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="compteur_clock">
            <timestamp>2012-5-21T12:53:43</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="rise_detect">
            <timestamp>2012-5-9T15:4:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="rise_detect" name="XLXI_4">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="entree" name="entree" />
            <blockpin signalname="XLXN_2" name="front" />
        </block>
        <block symbolname="compteur_clock" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_2" name="front_signal" />
            <blockpin signalname="XLXN_6(27:0)" name="periode(27:0)" />
        </block>
        <block symbolname="perToFreq" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_6(27:0)" name="periode(27:0)" />
            <blockpin signalname="frequence(23:0)" name="frequence(23:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1312" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1328" y1="1152" y2="1152" x1="1232" />
            <wire x2="1328" y1="1152" y2="1296" x1="1328" />
            <wire x2="1440" y1="1296" y2="1296" x1="1328" />
        </branch>
        <branch name="entree">
            <wire x2="848" y1="1280" y2="1280" x1="656" />
        </branch>
        <branch name="clk">
            <wire x2="752" y1="1216" y2="1216" x1="656" />
            <wire x2="848" y1="1216" y2="1216" x1="752" />
            <wire x2="752" y1="1072" y2="1216" x1="752" />
            <wire x2="1280" y1="1072" y2="1072" x1="752" />
            <wire x2="1280" y1="1072" y2="1168" x1="1280" />
            <wire x2="1408" y1="1168" y2="1168" x1="1280" />
            <wire x2="1440" y1="1168" y2="1168" x1="1408" />
            <wire x2="2032" y1="1040" y2="1040" x1="1408" />
            <wire x2="1408" y1="1040" y2="1168" x1="1408" />
        </branch>
        <branch name="rst">
            <wire x2="816" y1="1152" y2="1152" x1="656" />
            <wire x2="848" y1="1152" y2="1152" x1="816" />
            <wire x2="816" y1="1056" y2="1152" x1="816" />
            <wire x2="1296" y1="1056" y2="1056" x1="816" />
            <wire x2="1296" y1="1056" y2="1232" x1="1296" />
            <wire x2="1424" y1="1232" y2="1232" x1="1296" />
            <wire x2="1440" y1="1232" y2="1232" x1="1424" />
            <wire x2="2032" y1="1104" y2="1104" x1="1424" />
            <wire x2="1424" y1="1104" y2="1232" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="656" y="1152" name="rst" orien="R180" />
        <iomarker fontsize="28" x="656" y="1216" name="clk" orien="R180" />
        <iomarker fontsize="28" x="656" y="1280" name="entree" orien="R180" />
        <branch name="frequence(23:0)">
            <wire x2="2560" y1="1040" y2="1040" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1040" name="frequence(23:0)" orien="R0" />
        <instance x="1440" y="1328" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2032" y="1200" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_6(27:0)">
            <wire x2="2032" y1="1168" y2="1168" x1="1824" />
        </branch>
    </sheet>
</drawing>