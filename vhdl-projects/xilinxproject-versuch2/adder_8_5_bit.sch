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
        <signal name="XLXN_10" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <blockdef name="half_adder">
            <timestamp>2016-11-4T14:36:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="full_adder">
            <timestamp>2016-11-4T14:35:54</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="half_adder" name="XLXI_2">
            <blockpin name="a" />
            <blockpin name="b" />
            <blockpin name="c_out" />
            <blockpin signalname="XLXN_1" name="s" />
        </block>
        <block symbolname="full_adder" name="XLXI_4">
            <blockpin name="a" />
            <blockpin name="b" />
            <blockpin signalname="XLXN_1" name="c_in" />
            <blockpin name="s" />
            <blockpin signalname="XLXN_2" name="c_out" />
        </block>
        <block symbolname="full_adder" name="XLXI_5">
            <blockpin name="a" />
            <blockpin name="b" />
            <blockpin signalname="XLXN_2" name="c_in" />
            <blockpin name="s" />
            <blockpin signalname="XLXN_10" name="c_out" />
        </block>
        <block symbolname="full_adder" name="XLXI_7">
            <blockpin name="a" />
            <blockpin name="b" />
            <blockpin signalname="XLXN_10" name="c_in" />
            <blockpin name="s" />
            <blockpin signalname="XLXN_27" name="c_out" />
        </block>
        <block symbolname="full_adder" name="XLXI_8">
            <blockpin name="a" />
            <blockpin name="b" />
            <blockpin signalname="XLXN_27" name="c_in" />
            <blockpin name="s" />
            <blockpin signalname="XLXN_23" name="c_out" />
        </block>
        <block symbolname="half_adder" name="XLXI_9">
            <blockpin signalname="XLXN_23" name="a" />
            <blockpin name="b" />
            <blockpin name="c_out" />
            <blockpin signalname="XLXN_25" name="s" />
        </block>
        <block symbolname="half_adder" name="XLXI_10">
            <blockpin signalname="XLXN_25" name="a" />
            <blockpin name="b" />
            <blockpin name="c_out" />
            <blockpin signalname="XLXN_26" name="s" />
        </block>
        <block symbolname="half_adder" name="XLXI_11">
            <blockpin signalname="XLXN_26" name="a" />
            <blockpin name="b" />
            <blockpin name="c_out" />
            <blockpin name="s" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="912" name="XLXI_4" orien="R90">
        </instance>
        <instance x="1824" y="912" name="XLXI_2" orien="R90">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1552" y1="832" y2="912" x1="1552" />
            <wire x2="1776" y1="832" y2="832" x1="1552" />
            <wire x2="1776" y1="832" y2="1376" x1="1776" />
            <wire x2="1856" y1="1376" y2="1376" x1="1776" />
            <wire x2="1856" y1="1296" y2="1376" x1="1856" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="992" y1="848" y2="912" x1="992" />
            <wire x2="1216" y1="848" y2="848" x1="992" />
            <wire x2="1216" y1="848" y2="1344" x1="1216" />
            <wire x2="1264" y1="1344" y2="1344" x1="1216" />
            <wire x2="1264" y1="1296" y2="1344" x1="1264" />
        </branch>
        <instance x="1232" y="912" name="XLXI_5" orien="R90">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1264" y1="832" y2="912" x1="1264" />
            <wire x2="1504" y1="832" y2="832" x1="1264" />
            <wire x2="1504" y1="832" y2="1312" x1="1504" />
            <wire x2="1552" y1="1312" y2="1312" x1="1504" />
            <wire x2="1552" y1="1296" y2="1312" x1="1552" />
        </branch>
        <instance x="960" y="912" name="XLXI_7" orien="R90">
        </instance>
        <instance x="704" y="912" name="XLXI_8" orien="R90">
        </instance>
        <instance x="544" y="912" name="XLXI_9" orien="R90">
        </instance>
        <instance x="352" y="912" name="XLXI_10" orien="R90">
        </instance>
        <instance x="192" y="912" name="XLXI_11" orien="R90">
        </instance>
        <branch name="XLXN_23">
            <wire x2="640" y1="848" y2="912" x1="640" />
            <wire x2="688" y1="848" y2="848" x1="640" />
            <wire x2="688" y1="848" y2="1376" x1="688" />
            <wire x2="736" y1="1376" y2="1376" x1="688" />
            <wire x2="736" y1="1296" y2="1376" x1="736" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="448" y1="848" y2="912" x1="448" />
            <wire x2="496" y1="848" y2="848" x1="448" />
            <wire x2="496" y1="848" y2="1376" x1="496" />
            <wire x2="576" y1="1376" y2="1376" x1="496" />
            <wire x2="576" y1="1296" y2="1376" x1="576" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="288" y1="848" y2="912" x1="288" />
            <wire x2="336" y1="848" y2="848" x1="288" />
            <wire x2="336" y1="848" y2="1360" x1="336" />
            <wire x2="384" y1="1360" y2="1360" x1="336" />
            <wire x2="384" y1="1296" y2="1360" x1="384" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="736" y1="848" y2="912" x1="736" />
            <wire x2="944" y1="848" y2="848" x1="736" />
            <wire x2="944" y1="848" y2="1376" x1="944" />
            <wire x2="992" y1="1376" y2="1376" x1="944" />
            <wire x2="992" y1="1296" y2="1376" x1="992" />
        </branch>
    </sheet>
</drawing>