<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="SEGMENT(11:0)" />
        <signal name="XLXN_9(2:0)" />
        <signal name="XLXN_10(3:0)" />
        <signal name="XLXN_11(2:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_13(3:0)" />
        <signal name="XLXN_14(3:0)" />
        <signal name="CTRL" />
        <signal name="HOLD" />
        <signal name="RESET" />
        <signal name="CLK_100MHz" />
        <port polarity="Output" name="SEGMENT(11:0)" />
        <port polarity="Input" name="CTRL" />
        <port polarity="Input" name="HOLD" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLK_100MHz" />
        <blockdef name="Stoppuhr">
            <timestamp>2016-11-24T12:39:40</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="512" y="-428" height="24" />
            <line x2="576" y1="-416" y2="-416" x1="512" />
            <rect width="64" x="512" y="-364" height="24" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-300" height="24" />
            <line x2="576" y1="-288" y2="-288" x1="512" />
            <rect width="64" x="512" y="-236" height="24" />
            <line x2="576" y1="-224" y2="-224" x1="512" />
            <rect width="64" x="512" y="-172" height="24" />
            <line x2="576" y1="-160" y2="-160" x1="512" />
            <rect width="64" x="512" y="-108" height="24" />
            <line x2="576" y1="-96" y2="-96" x1="512" />
            <rect width="448" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="CLK_CTRL">
            <timestamp>2016-11-24T12:40:47</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SEG_CTRL">
            <timestamp>2016-11-24T12:40:59</timestamp>
            <rect width="336" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-492" height="24" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
        </blockdef>
        <block symbolname="Stoppuhr" name="XLXI_1">
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_1" name="CLK" />
            <blockpin signalname="XLXN_14(3:0)" name="Hundertstel(3:0)" />
            <blockpin signalname="XLXN_13(3:0)" name="Zehntel(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="Sekunden(3:0)" />
            <blockpin signalname="XLXN_11(2:0)" name="Dezimalsekunden(2:0)" />
            <blockpin signalname="XLXN_10(3:0)" name="Minuten(3:0)" />
            <blockpin signalname="XLXN_9(2:0)" name="Dezimalminuten(2:0)" />
        </block>
        <block symbolname="CLK_CTRL" name="XLXI_2">
            <blockpin signalname="CLK_100MHz" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="HOLD" name="HOLD" />
            <blockpin signalname="XLXN_1" name="CLK_100Hz" />
            <blockpin signalname="XLXN_2" name="CLK_1kHz" />
        </block>
        <block symbolname="SEG_CTRL" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="CLK" />
            <blockpin signalname="CTRL" name="CTRL" />
            <blockpin signalname="XLXN_9(2:0)" name="MIN_U(2:0)" />
            <blockpin signalname="XLXN_10(3:0)" name="MIN_L(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="SEC_L(3:0)" />
            <blockpin signalname="XLXN_11(2:0)" name="SEC_U(2:0)" />
            <blockpin signalname="XLXN_13(3:0)" name="DSEC_L(3:0)" />
            <blockpin signalname="XLXN_14(3:0)" name="DSEC_U(3:0)" />
            <blockpin signalname="SEGMENT(11:0)" name="SEGMENT(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="656" y1="560" y2="560" x1="608" />
            <wire x2="672" y1="560" y2="560" x1="656" />
        </branch>
        <instance x="224" y="720" name="XLXI_2" orien="R0">
        </instance>
        <branch name="SEGMENT(11:0)">
            <wire x2="2256" y1="1152" y2="1152" x1="1904" />
            <wire x2="2256" y1="1024" y2="1024" x1="2240" />
            <wire x2="2256" y1="1024" y2="1152" x1="2256" />
        </branch>
        <instance x="672" y="976" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2240" y="1024" name="SEGMENT(11:0)" orien="R180" />
        <instance x="1440" y="1632" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="624" y1="688" y2="688" x1="608" />
            <wire x2="624" y1="688" y2="1152" x1="624" />
            <wire x2="1424" y1="1152" y2="1152" x1="624" />
            <wire x2="1440" y1="1152" y2="1152" x1="1424" />
        </branch>
        <branch name="XLXN_9(2:0)">
            <wire x2="1344" y1="880" y2="880" x1="1248" />
            <wire x2="1344" y1="880" y2="1280" x1="1344" />
            <wire x2="1440" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="XLXN_10(3:0)">
            <wire x2="1328" y1="816" y2="816" x1="1248" />
            <wire x2="1328" y1="816" y2="1344" x1="1328" />
            <wire x2="1440" y1="1344" y2="1344" x1="1328" />
        </branch>
        <branch name="XLXN_11(2:0)">
            <wire x2="1312" y1="752" y2="752" x1="1248" />
            <wire x2="1312" y1="752" y2="1472" x1="1312" />
            <wire x2="1440" y1="1472" y2="1472" x1="1312" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="1296" y1="688" y2="688" x1="1248" />
            <wire x2="1296" y1="688" y2="1408" x1="1296" />
            <wire x2="1440" y1="1408" y2="1408" x1="1296" />
        </branch>
        <branch name="XLXN_13(3:0)">
            <wire x2="1360" y1="624" y2="624" x1="1248" />
            <wire x2="1360" y1="624" y2="1536" x1="1360" />
            <wire x2="1440" y1="1536" y2="1536" x1="1360" />
        </branch>
        <branch name="XLXN_14(3:0)">
            <wire x2="1376" y1="560" y2="560" x1="1248" />
            <wire x2="1376" y1="560" y2="1600" x1="1376" />
            <wire x2="1440" y1="1600" y2="1600" x1="1376" />
        </branch>
        <branch name="CTRL">
            <wire x2="1424" y1="1216" y2="1216" x1="1072" />
            <wire x2="1440" y1="1216" y2="1216" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1216" name="CTRL" orien="R180" />
        <branch name="HOLD">
            <wire x2="208" y1="688" y2="688" x1="192" />
            <wire x2="224" y1="688" y2="688" x1="208" />
        </branch>
        <iomarker fontsize="28" x="192" y="688" name="HOLD" orien="R180" />
        <branch name="RESET">
            <wire x2="128" y1="624" y2="624" x1="16" />
            <wire x2="128" y1="624" y2="640" x1="128" />
            <wire x2="16" y1="624" y2="1008" x1="16" />
            <wire x2="672" y1="1008" y2="1008" x1="16" />
            <wire x2="128" y1="640" y2="640" x1="32" />
            <wire x2="32" y1="640" y2="1280" x1="32" />
            <wire x2="336" y1="1280" y2="1280" x1="32" />
            <wire x2="128" y1="608" y2="624" x1="128" />
            <wire x2="208" y1="608" y2="608" x1="128" />
            <wire x2="208" y1="608" y2="624" x1="208" />
            <wire x2="224" y1="624" y2="624" x1="208" />
            <wire x2="208" y1="624" y2="624" x1="192" />
        </branch>
        <iomarker fontsize="28" x="336" y="1280" name="RESET" orien="R0" />
        <branch name="CLK_100MHz">
            <wire x2="224" y1="560" y2="560" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="560" name="CLK_100MHz" orien="R180" />
    </sheet>
</drawing>