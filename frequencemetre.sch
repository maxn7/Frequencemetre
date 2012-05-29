<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="entree" />
        <signal name="selecteur(3:0)" />
        <signal name="point" />
        <signal name="calibre(2:0)" />
        <signal name="segments(6:0)" />
        <signal name="rst" />
        <signal name="XLXN_51(23:0)" />
        <signal name="XLXN_52(23:0)" />
        <signal name="XLXN_53(23:0)" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55(23:0)" />
        <signal name="mhz" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="entree" />
        <port polarity="Output" name="selecteur(3:0)" />
        <port polarity="Output" name="point" />
        <port polarity="Output" name="calibre(2:0)" />
        <port polarity="Output" name="segments(6:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="mhz" />
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
        <blockdef name="etalon">
            <timestamp>2012-5-21T14:22:31</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="echantillon">
            <timestamp>2012-5-21T13:3:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="decision">
            <timestamp>2012-5-21T13:42:34</timestamp>
            <rect width="384" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <block symbolname="etalon" name="XLXI_2">
            <blockpin signalname="entree" name="entree" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_51(23:0)" name="freq(23:0)" />
        </block>
        <block symbolname="echantillon" name="XLXI_4">
            <blockpin signalname="entree" name="entree" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_52(23:0)" name="frequence(23:0)" />
        </block>
        <block symbolname="afficheur" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="mhz" name="mhz" />
            <blockpin signalname="XLXN_53(23:0)" name="frequence(23:0)" />
            <blockpin signalname="selecteur(3:0)" name="selecteur(3:0)" />
            <blockpin signalname="point" name="point" />
            <blockpin signalname="calibre(2:0)" name="calibre(2:0)" />
            <blockpin signalname="segments(6:0)" name="segments(6:0)" />
        </block>
        <block symbolname="decision" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_51(23:0)" name="echelonHF(23:0)" />
            <blockpin signalname="XLXN_52(23:0)" name="echantillonBF(23:0)" />
            <blockpin signalname="mhz" name="mhz" />
            <blockpin signalname="XLXN_53(23:0)" name="frequence(23:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="1360" y1="960" y2="960" x1="1120" />
            <wire x2="1936" y1="960" y2="960" x1="1360" />
            <wire x2="2688" y1="960" y2="960" x1="1936" />
            <wire x2="1936" y1="960" y2="1360" x1="1936" />
            <wire x2="2064" y1="1360" y2="1360" x1="1936" />
            <wire x2="1360" y1="960" y2="1216" x1="1360" />
            <wire x2="1424" y1="1216" y2="1216" x1="1360" />
            <wire x2="1360" y1="1216" y2="1616" x1="1360" />
            <wire x2="1424" y1="1616" y2="1616" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1152" name="entree" orien="R180" />
        <branch name="selecteur(3:0)">
            <wire x2="3264" y1="960" y2="960" x1="3152" />
        </branch>
        <branch name="point">
            <wire x2="3168" y1="1024" y2="1024" x1="3152" />
            <wire x2="3376" y1="1024" y2="1024" x1="3168" />
        </branch>
        <branch name="calibre(2:0)">
            <wire x2="3168" y1="1088" y2="1088" x1="3152" />
            <wire x2="3296" y1="1088" y2="1088" x1="3168" />
        </branch>
        <branch name="segments(6:0)">
            <wire x2="3168" y1="1152" y2="1152" x1="3152" />
            <wire x2="3264" y1="1152" y2="1152" x1="3168" />
        </branch>
        <instance x="2688" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3264" y="960" name="selecteur(3:0)" orien="R0" />
        <branch name="rst">
            <wire x2="1312" y1="1024" y2="1024" x1="1120" />
            <wire x2="1312" y1="1024" y2="1280" x1="1312" />
            <wire x2="1312" y1="1280" y2="1680" x1="1312" />
            <wire x2="1424" y1="1680" y2="1680" x1="1312" />
            <wire x2="1424" y1="1280" y2="1280" x1="1312" />
            <wire x2="1888" y1="1024" y2="1024" x1="1312" />
            <wire x2="2688" y1="1024" y2="1024" x1="1888" />
            <wire x2="1888" y1="1024" y2="1424" x1="1888" />
            <wire x2="2064" y1="1424" y2="1424" x1="1888" />
        </branch>
        <branch name="entree">
            <wire x2="1264" y1="1152" y2="1152" x1="1168" />
            <wire x2="1424" y1="1152" y2="1152" x1="1264" />
            <wire x2="1264" y1="1152" y2="1552" x1="1264" />
            <wire x2="1424" y1="1552" y2="1552" x1="1264" />
        </branch>
        <instance x="1424" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1424" y="1712" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_51(23:0)">
            <wire x2="1824" y1="1152" y2="1152" x1="1808" />
            <wire x2="1824" y1="1152" y2="1488" x1="1824" />
            <wire x2="2064" y1="1488" y2="1488" x1="1824" />
        </branch>
        <branch name="XLXN_52(23:0)">
            <wire x2="2064" y1="1552" y2="1552" x1="1808" />
        </branch>
        <branch name="XLXN_53(23:0)">
            <wire x2="2672" y1="1552" y2="1552" x1="2576" />
            <wire x2="2688" y1="1152" y2="1152" x1="2672" />
            <wire x2="2672" y1="1152" y2="1552" x1="2672" />
        </branch>
        <instance x="2064" y="1584" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1120" y="1024" name="rst" orien="R180" />
        <iomarker fontsize="28" x="1120" y="960" name="clk" orien="R180" />
        <branch name="mhz">
            <wire x2="2624" y1="1360" y2="1360" x1="2576" />
            <wire x2="2624" y1="704" y2="1088" x1="2624" />
            <wire x2="2624" y1="1088" y2="1360" x1="2624" />
            <wire x2="2688" y1="1088" y2="1088" x1="2624" />
            <wire x2="3360" y1="704" y2="704" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="3376" y="1024" name="point" orien="R0" />
        <iomarker fontsize="28" x="3296" y="1088" name="calibre(2:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="1152" name="segments(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3360" y="704" name="mhz" orien="R0" />
    </sheet>
</drawing>