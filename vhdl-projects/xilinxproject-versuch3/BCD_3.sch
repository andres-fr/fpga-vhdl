<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BCD(1)" />
        <signal name="BCD(0)" />
        <signal name="BCD(2)" />
        <signal name="CLK" />
        <signal name="BCD(2:0)" />
        <signal name="CLEAR" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_22" />
        <signal name="RESET" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="BCD(2:0)" />
        <port polarity="Output" name="CLEAR" />
        <port polarity="Input" name="RESET" />
        <blockdef name="DFlipFlop">
            <timestamp>2016-5-24T10:29:26</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="And_gate">
            <timestamp>2016-5-24T10:36:48</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="NAND_gate">
            <timestamp>2016-5-24T10:36:40</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="DFlipFlop" name="XLXI_1">
            <blockpin signalname="XLXN_26" name="D" />
            <blockpin signalname="BCD(0)" name="Q" />
            <blockpin signalname="XLXN_14" name="NOT_Q" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="DFlipFlop" name="XLXI_2">
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="BCD(1)" name="Q" />
            <blockpin signalname="XLXN_13" name="NOT_Q" />
            <blockpin signalname="BCD(0)" name="CLK" />
        </block>
        <block symbolname="DFlipFlop" name="XLXI_3">
            <blockpin signalname="BCD(1)" name="D" />
            <blockpin signalname="BCD(2)" name="Q" />
            <blockpin signalname="XLXN_12" name="NOT_Q" />
            <blockpin signalname="BCD(0)" name="CLK" />
        </block>
        <block symbolname="And_gate" name="XLXI_5">
            <blockpin signalname="XLXN_13" name="in0" />
            <blockpin signalname="XLXN_14" name="in1" />
            <blockpin signalname="XLXN_11" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_6">
            <blockpin signalname="XLXN_12" name="in0" />
            <blockpin signalname="XLXN_11" name="in1" />
            <blockpin signalname="CLEAR" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_7">
            <blockpin signalname="XLXN_12" name="in0" />
            <blockpin signalname="XLXN_13" name="in1" />
            <blockpin signalname="XLXN_15" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_8">
            <blockpin signalname="XLXN_25" name="in0" />
            <blockpin signalname="XLXN_14" name="in1" />
            <blockpin signalname="XLXN_26" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_9">
            <blockpin signalname="RESET" name="in0" />
            <blockpin signalname="CLEAR" name="in1" />
            <blockpin signalname="XLXN_24" name="out0" />
        </block>
        <block symbolname="NAND_gate" name="XLXI_10">
            <blockpin signalname="XLXN_24" name="a" />
            <blockpin signalname="XLXN_24" name="b" />
            <blockpin signalname="XLXN_25" name="c" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1824" y="1088" name="XLXI_3" orien="R0">
        </instance>
        <branch name="BCD(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1424" type="branch" />
            <wire x2="1664" y1="992" y2="992" x1="1600" />
            <wire x2="1664" y1="992" y2="1424" x1="1664" />
            <wire x2="1664" y1="1424" y2="1840" x1="1664" />
            <wire x2="1824" y1="992" y2="992" x1="1664" />
        </branch>
        <branch name="BCD(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1424" type="branch" />
            <wire x2="976" y1="992" y2="992" x1="912" />
            <wire x2="976" y1="992" y2="1120" x1="976" />
            <wire x2="1216" y1="1120" y2="1120" x1="976" />
            <wire x2="976" y1="1120" y2="1216" x1="976" />
            <wire x2="976" y1="1216" y2="1424" x1="976" />
            <wire x2="976" y1="1424" y2="1840" x1="976" />
            <wire x2="1824" y1="1216" y2="1216" x1="976" />
            <wire x2="1824" y1="1120" y2="1216" x1="1824" />
        </branch>
        <branch name="BCD(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1448" type="branch" />
            <wire x2="2368" y1="992" y2="992" x1="2208" />
            <wire x2="2368" y1="992" y2="1448" x1="2368" />
            <wire x2="2368" y1="1448" y2="1840" x1="2368" />
        </branch>
        <branch name="CLK">
            <wire x2="528" y1="1120" y2="1120" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1120" name="CLK" orien="R180" />
        <branch name="BCD(2:0)">
            <wire x2="976" y1="1936" y2="1936" x1="624" />
            <wire x2="1664" y1="1936" y2="1936" x1="976" />
            <wire x2="2368" y1="1936" y2="1936" x1="1664" />
            <wire x2="2784" y1="1936" y2="1936" x1="2368" />
        </branch>
        <bustap x2="1664" y1="1936" y2="1840" x1="1664" />
        <bustap x2="976" y1="1936" y2="1840" x1="976" />
        <bustap x2="2368" y1="1936" y2="1840" x1="2368" />
        <iomarker fontsize="28" x="624" y="1936" name="BCD(2:0)" orien="R180" />
        <instance x="1824" y="1408" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2480" y="1408" name="XLXI_6" orien="R0">
        </instance>
        <branch name="CLEAR">
            <wire x2="2880" y1="512" y2="512" x1="2208" />
            <wire x2="2880" y1="512" y2="1312" x1="2880" />
            <wire x2="2992" y1="1312" y2="1312" x1="2880" />
            <wire x2="2880" y1="1312" y2="1312" x1="2864" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2256" y1="1312" y2="1312" x1="2208" />
            <wire x2="2256" y1="1312" y2="1376" x1="2256" />
            <wire x2="2480" y1="1376" y2="1376" x1="2256" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2320" y1="752" y2="752" x1="1600" />
            <wire x2="2320" y1="752" y2="1056" x1="2320" />
            <wire x2="2320" y1="1056" y2="1312" x1="2320" />
            <wire x2="2480" y1="1312" y2="1312" x1="2320" />
            <wire x2="2320" y1="1056" y2="1056" x1="2208" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1616" y1="816" y2="816" x1="1600" />
            <wire x2="1616" y1="816" y2="1056" x1="1616" />
            <wire x2="1616" y1="1056" y2="1312" x1="1616" />
            <wire x2="1824" y1="1312" y2="1312" x1="1616" />
            <wire x2="1616" y1="1056" y2="1056" x1="1600" />
        </branch>
        <instance x="1216" y="1088" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1600" y="848" name="XLXI_7" orien="M0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="1216" y1="752" y2="752" x1="1200" />
            <wire x2="1200" y1="752" y2="992" x1="1200" />
            <wire x2="1216" y1="992" y2="992" x1="1200" />
        </branch>
        <instance x="528" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="928" y1="816" y2="816" x1="912" />
            <wire x2="928" y1="816" y2="1056" x1="928" />
            <wire x2="928" y1="1056" y2="1376" x1="928" />
            <wire x2="1824" y1="1376" y2="1376" x1="928" />
            <wire x2="928" y1="1056" y2="1056" x1="912" />
        </branch>
        <instance x="1600" y="544" name="XLXI_10" orien="M0">
        </instance>
        <instance x="2208" y="544" name="XLXI_9" orien="M0">
        </instance>
        <branch name="RESET">
            <wire x2="2240" y1="448" y2="448" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="448" name="RESET" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1312" name="CLEAR" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="1728" y1="448" y2="448" x1="1600" />
            <wire x2="1824" y1="448" y2="448" x1="1728" />
            <wire x2="1728" y1="448" y2="512" x1="1728" />
            <wire x2="1728" y1="512" y2="512" x1="1600" />
        </branch>
        <instance x="912" y="848" name="XLXI_8" orien="M0">
        </instance>
        <branch name="XLXN_26">
            <wire x2="528" y1="752" y2="752" x1="512" />
            <wire x2="512" y1="752" y2="992" x1="512" />
            <wire x2="528" y1="992" y2="992" x1="512" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="928" y1="752" y2="752" x1="912" />
            <wire x2="928" y1="448" y2="752" x1="928" />
            <wire x2="1216" y1="448" y2="448" x1="928" />
        </branch>
    </sheet>
</drawing>