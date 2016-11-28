<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="CLK" />
        <signal name="XLXN_11" />
        <signal name="XLXN_10" />
        <signal name="XLXN_41" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="CLEAR" />
        <signal name="RESET" />
        <signal name="XLXN_61" />
        <signal name="BCD(3:0)" />
        <signal name="BCD(3)" />
        <signal name="BCD(2)" />
        <signal name="BCD(1)" />
        <signal name="BCD(0)" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="CLEAR" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="BCD(3:0)" />
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
            <blockpin signalname="XLXN_56" name="D" />
            <blockpin signalname="BCD(0)" name="Q" />
            <blockpin signalname="XLXN_54" name="NOT_Q" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="DFlipFlop" name="XLXI_2">
            <blockpin signalname="XLXN_5" name="D" />
            <blockpin signalname="BCD(1)" name="Q" />
            <blockpin signalname="XLXN_3" name="NOT_Q" />
            <blockpin signalname="BCD(0)" name="CLK" />
        </block>
        <block symbolname="DFlipFlop" name="XLXI_3">
            <blockpin signalname="XLXN_79" name="D" />
            <blockpin signalname="BCD(2)" name="Q" />
            <blockpin signalname="XLXN_79" name="NOT_Q" />
            <blockpin signalname="BCD(1)" name="CLK" />
        </block>
        <block symbolname="And_gate" name="XLXI_5">
            <blockpin signalname="XLXN_11" name="in0" />
            <blockpin signalname="XLXN_3" name="in1" />
            <blockpin signalname="XLXN_5" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_6">
            <blockpin signalname="BCD(1)" name="in0" />
            <blockpin signalname="BCD(2)" name="in1" />
            <blockpin signalname="XLXN_10" name="out0" />
        </block>
        <block symbolname="DFlipFlop" name="XLXI_4">
            <blockpin signalname="XLXN_10" name="D" />
            <blockpin signalname="BCD(3)" name="Q" />
            <blockpin signalname="XLXN_11" name="NOT_Q" />
            <blockpin signalname="BCD(0)" name="CLK" />
        </block>
        <block symbolname="And_gate" name="XLXI_7">
            <blockpin signalname="XLXN_54" name="in0" />
            <blockpin signalname="XLXN_3" name="in1" />
            <blockpin signalname="XLXN_77" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_8">
            <blockpin signalname="XLXN_79" name="in0" />
            <blockpin signalname="XLXN_77" name="in1" />
            <blockpin signalname="XLXN_41" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_25">
            <blockpin signalname="XLXN_11" name="in0" />
            <blockpin signalname="XLXN_41" name="in1" />
            <blockpin signalname="CLEAR" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_27">
            <blockpin signalname="XLXN_55" name="in0" />
            <blockpin signalname="XLXN_54" name="in1" />
            <blockpin signalname="XLXN_56" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_28">
            <blockpin signalname="RESET" name="in0" />
            <blockpin signalname="CLEAR" name="in1" />
            <blockpin signalname="XLXN_61" name="out0" />
        </block>
        <block symbolname="NAND_gate" name="XLXI_29">
            <blockpin signalname="XLXN_61" name="a" />
            <blockpin signalname="XLXN_61" name="b" />
            <blockpin signalname="XLXN_55" name="c" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="320" y="752" name="XLXI_1" orien="R0">
        </instance>
        <instance x="960" y="752" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1600" y="752" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1344" y="496" name="XLXI_5" orien="M0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1360" y1="464" y2="464" x1="1344" />
            <wire x2="1360" y1="464" y2="720" x1="1360" />
            <wire x2="1360" y1="720" y2="1024" x1="1360" />
            <wire x2="1600" y1="1024" y2="1024" x1="1360" />
            <wire x2="1360" y1="720" y2="720" x1="1344" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="960" y1="400" y2="400" x1="944" />
            <wire x2="944" y1="400" y2="656" x1="944" />
            <wire x2="960" y1="656" y2="656" x1="944" />
        </branch>
        <branch name="CLK">
            <wire x2="320" y1="784" y2="784" x1="288" />
        </branch>
        <instance x="2096" y="688" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="2496" y1="592" y2="592" x1="2480" />
            <wire x2="2496" y1="592" y2="656" x1="2496" />
            <wire x2="2512" y1="656" y2="656" x1="2496" />
        </branch>
        <instance x="2512" y="752" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1600" y="1056" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="288" y="784" name="CLK" orien="R180" />
        <instance x="2112" y="1056" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3200" y="960" name="CLEAR" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="2960" y1="400" y2="400" x1="1344" />
            <wire x2="2960" y1="400" y2="720" x1="2960" />
            <wire x2="2960" y1="720" y2="864" x1="2960" />
            <wire x2="2544" y1="864" y2="960" x1="2544" />
            <wire x2="2608" y1="960" y2="960" x1="2544" />
            <wire x2="2960" y1="864" y2="864" x1="2544" />
            <wire x2="2960" y1="720" y2="720" x1="2896" />
        </branch>
        <instance x="2608" y="1056" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_41">
            <wire x2="2512" y1="960" y2="960" x1="2496" />
            <wire x2="2512" y1="960" y2="1024" x1="2512" />
            <wire x2="2608" y1="1024" y2="1024" x1="2512" />
        </branch>
        <instance x="704" y="496" name="XLXI_27" orien="M0">
        </instance>
        <branch name="XLXN_54">
            <wire x2="752" y1="464" y2="464" x1="704" />
            <wire x2="752" y1="464" y2="720" x1="752" />
            <wire x2="752" y1="720" y2="960" x1="752" />
            <wire x2="1600" y1="960" y2="960" x1="752" />
            <wire x2="752" y1="720" y2="720" x1="704" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="752" y1="400" y2="400" x1="704" />
            <wire x2="2000" y1="192" y2="192" x1="752" />
            <wire x2="752" y1="192" y2="400" x1="752" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="320" y1="400" y2="400" x1="304" />
            <wire x2="304" y1="400" y2="656" x1="304" />
            <wire x2="320" y1="656" y2="656" x1="304" />
        </branch>
        <branch name="CLEAR">
            <wire x2="3136" y1="256" y2="256" x1="2896" />
            <wire x2="3136" y1="256" y2="960" x1="3136" />
            <wire x2="3200" y1="960" y2="960" x1="3136" />
            <wire x2="3136" y1="960" y2="960" x1="2992" />
        </branch>
        <instance x="2896" y="288" name="XLXI_28" orien="M0">
        </instance>
        <branch name="RESET">
            <wire x2="3136" y1="192" y2="192" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="3136" y="192" name="RESET" orien="R0" />
        <instance x="2384" y="288" name="XLXI_29" orien="M0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="2448" y1="192" y2="192" x1="2384" />
            <wire x2="2512" y1="192" y2="192" x1="2448" />
            <wire x2="2448" y1="192" y2="256" x1="2448" />
            <wire x2="2448" y1="256" y2="256" x1="2384" />
        </branch>
        <branch name="BCD(3:0)">
            <wire x2="832" y1="1536" y2="1536" x1="720" />
            <wire x2="1472" y1="1536" y2="1536" x1="832" />
            <wire x2="2096" y1="1536" y2="1536" x1="1472" />
            <wire x2="3024" y1="1536" y2="1536" x1="2096" />
            <wire x2="3184" y1="1536" y2="1536" x1="3024" />
        </branch>
        <bustap x2="3024" y1="1536" y2="1440" x1="3024" />
        <branch name="BCD(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1368" type="branch" />
            <wire x2="3024" y1="656" y2="656" x1="2896" />
            <wire x2="3024" y1="656" y2="1440" x1="3024" />
        </branch>
        <bustap x2="2096" y1="1536" y2="1440" x1="2096" />
        <branch name="BCD(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1360" type="branch" />
            <wire x2="2096" y1="656" y2="656" x1="1984" />
            <wire x2="2096" y1="656" y2="1360" x1="2096" />
            <wire x2="2096" y1="1360" y2="1440" x1="2096" />
        </branch>
        <bustap x2="1472" y1="1536" y2="1440" x1="1472" />
        <branch name="BCD(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1360" type="branch" />
            <wire x2="1424" y1="656" y2="656" x1="1344" />
            <wire x2="1424" y1="656" y2="784" x1="1424" />
            <wire x2="1472" y1="784" y2="784" x1="1424" />
            <wire x2="1600" y1="784" y2="784" x1="1472" />
            <wire x2="1472" y1="784" y2="1360" x1="1472" />
            <wire x2="1472" y1="1360" y2="1440" x1="1472" />
            <wire x2="2096" y1="496" y2="496" x1="1424" />
            <wire x2="2096" y1="496" y2="592" x1="2096" />
            <wire x2="1424" y1="496" y2="656" x1="1424" />
        </branch>
        <bustap x2="832" y1="1536" y2="1440" x1="832" />
        <branch name="BCD(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1360" type="branch" />
            <wire x2="832" y1="656" y2="656" x1="704" />
            <wire x2="832" y1="656" y2="784" x1="832" />
            <wire x2="960" y1="784" y2="784" x1="832" />
            <wire x2="832" y1="784" y2="848" x1="832" />
            <wire x2="2000" y1="848" y2="848" x1="832" />
            <wire x2="832" y1="848" y2="1360" x1="832" />
            <wire x2="832" y1="1360" y2="1440" x1="832" />
            <wire x2="2512" y1="784" y2="784" x1="2000" />
            <wire x2="2000" y1="784" y2="848" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="720" y="1536" name="BCD(3:0)" orien="R180" />
        <branch name="XLXN_77">
            <wire x2="2016" y1="960" y2="960" x1="1984" />
            <wire x2="2016" y1="960" y2="1024" x1="2016" />
            <wire x2="2112" y1="1024" y2="1024" x1="2016" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="2064" y1="528" y2="528" x1="1536" />
            <wire x2="2064" y1="528" y2="720" x1="2064" />
            <wire x2="2064" y1="720" y2="960" x1="2064" />
            <wire x2="2112" y1="960" y2="960" x1="2064" />
            <wire x2="1536" y1="528" y2="656" x1="1536" />
            <wire x2="1600" y1="656" y2="656" x1="1536" />
            <wire x2="2064" y1="720" y2="720" x1="1984" />
        </branch>
    </sheet>
</drawing>