<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(2:0)" />
        <signal name="XLXN_2(1:0)" />
        <signal name="selecteur(3:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="point" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="calibre(2:0)" />
        <signal name="mhz" />
        <signal name="frequence(23:0)" />
        <signal name="segments(6:0)" />
        <port polarity="Output" name="selecteur(3:0)" />
        <port polarity="Output" name="point" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="calibre(2:0)" />
        <port polarity="Input" name="mhz" />
        <port polarity="Input" name="frequence(23:0)" />
        <port polarity="Output" name="segments(6:0)" />
        <blockdef name="trouver_digit">
            <timestamp>2012-5-9T12:2:46</timestamp>
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
        <blockdef name="trouver_calibre">
            <timestamp>2012-5-9T12:4:52</timestamp>
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
        <blockdef name="decodeur">
            <timestamp>2012-5-9T12:2:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="trouver_digit" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="frequence(23:0)" name="frequence(23:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="puissance(2:0)" />
            <blockpin signalname="XLXN_2(1:0)" name="position_point(1:0)" />
            <blockpin signalname="point" name="point_on" />
            <blockpin signalname="XLXN_5(3:0)" name="digit(3:0)" />
            <blockpin signalname="selecteur(3:0)" name="selecteur(3:0)" />
        </block>
        <block symbolname="trouver_calibre" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="mhz" name="mHz" />
            <blockpin signalname="frequence(23:0)" name="frequence(23:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="puissance(2:0)" />
            <blockpin signalname="XLXN_2(1:0)" name="position_point(1:0)" />
            <blockpin signalname="calibre(2:0)" name="calibre(2:0)" />
        </block>
        <block symbolname="decodeur" name="XLXI_3">
            <blockpin signalname="XLXN_5(3:0)" name="valeur(3:0)" />
            <blockpin signalname="segments(6:0)" name="sortie(6:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="1264" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1856" y="1136" name="XLXI_3" orien="R0">
        </instance>
        <instance x="496" y="1232" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(2:0)">
            <wire x2="1136" y1="1008" y2="1008" x1="992" />
            <wire x2="1136" y1="1008" y2="1168" x1="1136" />
            <wire x2="1296" y1="1168" y2="1168" x1="1136" />
        </branch>
        <branch name="XLXN_2(1:0)">
            <wire x2="1120" y1="1104" y2="1104" x1="992" />
            <wire x2="1120" y1="1104" y2="1232" x1="1120" />
            <wire x2="1296" y1="1232" y2="1232" x1="1120" />
        </branch>
        <branch name="selecteur(3:0)">
            <wire x2="2240" y1="1232" y2="1232" x1="1776" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1856" y1="1104" y2="1104" x1="1776" />
        </branch>
        <branch name="point">
            <wire x2="2240" y1="976" y2="976" x1="1776" />
        </branch>
        <branch name="clk">
            <wire x2="464" y1="800" y2="800" x1="288" />
            <wire x2="1056" y1="800" y2="800" x1="464" />
            <wire x2="1056" y1="800" y2="976" x1="1056" />
            <wire x2="1296" y1="976" y2="976" x1="1056" />
            <wire x2="464" y1="800" y2="1008" x1="464" />
            <wire x2="496" y1="1008" y2="1008" x1="464" />
        </branch>
        <branch name="rst">
            <wire x2="416" y1="752" y2="752" x1="288" />
            <wire x2="416" y1="752" y2="1072" x1="416" />
            <wire x2="496" y1="1072" y2="1072" x1="416" />
            <wire x2="1232" y1="752" y2="752" x1="416" />
            <wire x2="1232" y1="752" y2="1040" x1="1232" />
            <wire x2="1296" y1="1040" y2="1040" x1="1232" />
        </branch>
        <branch name="calibre(2:0)">
            <wire x2="1008" y1="1200" y2="1200" x1="992" />
            <wire x2="1008" y1="1200" y2="1328" x1="1008" />
            <wire x2="2256" y1="1328" y2="1328" x1="1008" />
        </branch>
        <branch name="mhz">
            <wire x2="496" y1="1136" y2="1136" x1="352" />
        </branch>
        <branch name="frequence(23:0)">
            <wire x2="416" y1="1200" y2="1200" x1="352" />
            <wire x2="496" y1="1200" y2="1200" x1="416" />
            <wire x2="416" y1="1200" y2="1408" x1="416" />
            <wire x2="1216" y1="1408" y2="1408" x1="416" />
            <wire x2="1296" y1="1104" y2="1104" x1="1216" />
            <wire x2="1216" y1="1104" y2="1408" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="352" y="1136" name="mhz" orien="R180" />
        <iomarker fontsize="28" x="352" y="1200" name="frequence(23:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="752" name="rst" orien="R180" />
        <iomarker fontsize="28" x="288" y="800" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2240" y="976" name="point" orien="R0" />
        <branch name="segments(6:0)">
            <wire x2="2272" y1="1104" y2="1104" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1104" name="segments(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2240" y="1232" name="selecteur(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1328" name="calibre(2:0)" orien="R0" />
    </sheet>
</drawing>