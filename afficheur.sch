<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_8(2:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="calibre(2:0)" />
        <signal name="point" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="mhz" />
        <signal name="frequence(23:0)" />
        <signal name="segments(6:0)" />
        <signal name="selecteur(3:0)" />
        <port polarity="Output" name="calibre(2:0)" />
        <port polarity="Output" name="point" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="mhz" />
        <port polarity="Input" name="frequence(23:0)" />
        <port polarity="Output" name="segments(6:0)" />
        <port polarity="Output" name="selecteur(3:0)" />
        <blockdef name="decodeur">
            <timestamp>2012-4-23T15:51:19</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="trouver_calibre">
            <timestamp>2012-4-23T15:52:52</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-140" height="24" />
            <line x2="496" y1="-128" y2="-128" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="trouver_digit">
            <timestamp>2012-4-23T15:52:46</timestamp>
            <rect width="352" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <block symbolname="decodeur" name="XLXI_2">
            <blockpin signalname="XLXN_7(3:0)" name="valeur(3:0)" />
            <blockpin signalname="segments(6:0)" name="sortie(6:0)" />
        </block>
        <block symbolname="trouver_calibre" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="mhz" name="mHz" />
            <blockpin signalname="frequence(23:0)" name="frequence(23:0)" />
            <blockpin signalname="XLXN_8(2:0)" name="puissance(2:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="position_point(1:0)" />
            <blockpin signalname="calibre(2:0)" name="calibre(2:0)" />
        </block>
        <block symbolname="trouver_digit" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="frequence(23:0)" name="frequence(23:0)" />
            <blockpin signalname="XLXN_8(2:0)" name="puissance(2:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="position_point(1:0)" />
            <blockpin signalname="point" name="point_on" />
            <blockpin signalname="XLXN_7(3:0)" name="digit(3:0)" />
            <blockpin signalname="selecteur(3:0)" name="selecteur(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="1312" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1536" y="1328" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2224" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_7(3:0)">
            <wire x2="2224" y1="1168" y2="1168" x1="2016" />
        </branch>
        <branch name="XLXN_8(2:0)">
            <wire x2="1392" y1="1088" y2="1088" x1="1248" />
            <wire x2="1392" y1="1088" y2="1232" x1="1392" />
            <wire x2="1536" y1="1232" y2="1232" x1="1392" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="1376" y1="1184" y2="1184" x1="1248" />
            <wire x2="1376" y1="1184" y2="1296" x1="1376" />
            <wire x2="1536" y1="1296" y2="1296" x1="1376" />
        </branch>
        <branch name="calibre(2:0)">
            <wire x2="1264" y1="1280" y2="1280" x1="1248" />
            <wire x2="1264" y1="1280" y2="1424" x1="1264" />
            <wire x2="2768" y1="1424" y2="1424" x1="1264" />
        </branch>
        <branch name="point">
            <wire x2="2672" y1="1040" y2="1040" x1="2016" />
        </branch>
        <branch name="clk">
            <wire x2="688" y1="912" y2="912" x1="528" />
            <wire x2="1536" y1="912" y2="912" x1="688" />
            <wire x2="1536" y1="912" y2="1040" x1="1536" />
            <wire x2="688" y1="912" y2="1088" x1="688" />
            <wire x2="752" y1="1088" y2="1088" x1="688" />
        </branch>
        <branch name="rst">
            <wire x2="704" y1="976" y2="976" x1="528" />
            <wire x2="704" y1="976" y2="1152" x1="704" />
            <wire x2="752" y1="1152" y2="1152" x1="704" />
            <wire x2="1312" y1="976" y2="976" x1="704" />
            <wire x2="1312" y1="976" y2="1104" x1="1312" />
            <wire x2="1536" y1="1104" y2="1104" x1="1312" />
        </branch>
        <branch name="mhz">
            <wire x2="752" y1="1216" y2="1216" x1="496" />
        </branch>
        <branch name="frequence(23:0)">
            <wire x2="672" y1="1360" y2="1360" x1="512" />
            <wire x2="672" y1="1360" y2="1392" x1="672" />
            <wire x2="1328" y1="1392" y2="1392" x1="672" />
            <wire x2="752" y1="1280" y2="1280" x1="672" />
            <wire x2="672" y1="1280" y2="1360" x1="672" />
            <wire x2="1328" y1="1168" y2="1392" x1="1328" />
            <wire x2="1536" y1="1168" y2="1168" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="496" y="1216" name="mhz" orien="R180" />
        <iomarker fontsize="28" x="512" y="1360" name="frequence(23:0)" orien="R180" />
        <branch name="segments(6:0)">
            <wire x2="2784" y1="1168" y2="1168" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1040" name="point" orien="R0" />
        <iomarker fontsize="28" x="2784" y="1168" name="segments(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1296" name="selecteur(3:0)" orien="R0" />
        <iomarker fontsize="28" x="528" y="976" name="rst" orien="R180" />
        <iomarker fontsize="28" x="528" y="912" name="clk" orien="R180" />
        <branch name="selecteur(3:0)">
            <wire x2="2768" y1="1296" y2="1296" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1424" name="calibre(2:0)" orien="R0" />
    </sheet>
</drawing>