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
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <port polarity="Input" name="XLXN_5" />
        <port polarity="Input" name="XLXN_6" />
        <port polarity="Input" name="XLXN_7" />
        <port polarity="Input" name="XLXN_8" />
        <port polarity="Input" name="XLXN_9" />
        <port polarity="Output" name="XLXN_10" />
        <blockdef name="AND_Gate">
            <timestamp>2016-11-10T12:38:12</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="AND_Gate" name="XLXI_1">
            <blockpin signalname="XLXN_6" name="a" />
            <blockpin signalname="XLXN_7" name="b" />
            <blockpin signalname="XLXN_1" name="c" />
        </block>
        <block symbolname="AND_Gate" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="a" />
            <blockpin signalname="XLXN_9" name="b" />
            <blockpin signalname="XLXN_2" name="c" />
        </block>
        <block symbolname="AND_Gate" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="a" />
            <blockpin signalname="XLXN_2" name="b" />
            <blockpin signalname="XLXN_3" name="c" />
        </block>
        <block symbolname="AND_Gate" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="a" />
            <blockpin signalname="XLXN_5" name="b" />
            <blockpin signalname="XLXN_10" name="c" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="848" name="XLXI_1" orien="R0">
        </instance>
        <instance x="960" y="1056" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1424" y="928" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1888" y="928" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1376" y1="752" y2="752" x1="1344" />
            <wire x2="1376" y1="752" y2="832" x1="1376" />
            <wire x2="1424" y1="832" y2="832" x1="1376" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1376" y1="960" y2="960" x1="1344" />
            <wire x2="1376" y1="896" y2="960" x1="1376" />
            <wire x2="1424" y1="896" y2="896" x1="1376" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1888" y1="832" y2="832" x1="1808" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1872" y1="1184" y2="1184" x1="944" />
            <wire x2="1872" y1="896" y2="1184" x1="1872" />
            <wire x2="1888" y1="896" y2="896" x1="1872" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="960" y1="752" y2="752" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="752" name="XLXN_6" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="960" y1="816" y2="816" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="816" name="XLXN_7" orien="R180" />
        <branch name="XLXN_8">
            <wire x2="960" y1="960" y2="960" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="960" name="XLXN_8" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="960" y1="1024" y2="1024" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="1024" name="XLXN_9" orien="R180" />
        <iomarker fontsize="28" x="944" y="1184" name="XLXN_5" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="2304" y1="832" y2="832" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="832" name="XLXN_10" orien="R0" />
    </sheet>
</drawing>