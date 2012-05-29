<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(23:0)" />
        <signal name="segments(6:0)" />
        <signal name="calibre(2:0)" />
        <signal name="point" />
        <signal name="selecteur(3:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="mhz" />
        <port polarity="Output" name="segments(6:0)" />
        <port polarity="Output" name="calibre(2:0)" />
        <port polarity="Output" name="point" />
        <port polarity="Output" name="selecteur(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="mhz" />
        <blockdef name="generateur_nombre_24bits">
            <timestamp>2012-5-9T12:9:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="afficheur">
            <timestamp>2012-5-9T12:9:43</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="generateur_nombre_24bits" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_1(23:0)" name="sortie(23:0)" />
        </block>
        <block symbolname="afficheur" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="mhz" name="mhz" />
            <blockpin signalname="XLXN_1(23:0)" name="frequence(23:0)" />
            <blockpin signalname="selecteur(3:0)" name="selecteur(3:0)" />
            <blockpin signalname="point" name="point" />
            <blockpin signalname="calibre(2:0)" name="calibre(2:0)" />
            <blockpin signalname="segments(6:0)" name="segments(6:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="944" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1792" y="1072" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(23:0)">
            <wire x2="1568" y1="848" y2="848" x1="1360" />
            <wire x2="1568" y1="848" y2="1040" x1="1568" />
            <wire x2="1792" y1="1040" y2="1040" x1="1568" />
        </branch>
        <branch name="segments(6:0)">
            <wire x2="2336" y1="1040" y2="1040" x1="2256" />
        </branch>
        <branch name="calibre(2:0)">
            <wire x2="2336" y1="976" y2="976" x1="2256" />
        </branch>
        <branch name="point">
            <wire x2="2336" y1="912" y2="912" x1="2256" />
        </branch>
        <branch name="selecteur(3:0)">
            <wire x2="2336" y1="848" y2="848" x1="2256" />
        </branch>
        <branch name="clk">
            <wire x2="896" y1="848" y2="848" x1="816" />
            <wire x2="976" y1="848" y2="848" x1="896" />
            <wire x2="896" y1="752" y2="848" x1="896" />
            <wire x2="1648" y1="752" y2="752" x1="896" />
            <wire x2="1648" y1="752" y2="848" x1="1648" />
            <wire x2="1792" y1="848" y2="848" x1="1648" />
        </branch>
        <branch name="rst">
            <wire x2="912" y1="912" y2="912" x1="816" />
            <wire x2="976" y1="912" y2="912" x1="912" />
            <wire x2="912" y1="912" y2="1008" x1="912" />
            <wire x2="1424" y1="1008" y2="1008" x1="912" />
            <wire x2="1424" y1="912" y2="1008" x1="1424" />
            <wire x2="1792" y1="912" y2="912" x1="1424" />
        </branch>
        <branch name="mhz">
            <wire x2="1792" y1="976" y2="976" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="816" y="848" name="clk" orien="R180" />
        <iomarker fontsize="28" x="816" y="912" name="rst" orien="R180" />
        <iomarker fontsize="28" x="1744" y="976" name="mhz" orien="R180" />
        <iomarker fontsize="28" x="2336" y="848" name="selecteur(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2336" y="912" name="point" orien="R0" />
        <iomarker fontsize="28" x="2336" y="976" name="calibre(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2336" y="1040" name="segments(6:0)" orien="R0" />
    </sheet>
</drawing>