<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Hundertstel(3:0)" />
        <signal name="Hundertstel(3)" />
        <signal name="Hundertstel(0)" />
        <signal name="Zehntel(3:0)" />
        <signal name="Zehntel(3)" />
        <signal name="Zehntel(0)" />
        <signal name="Sekunden(3:0)" />
        <signal name="Sekunden(3)" />
        <signal name="Sekunden(0)" />
        <signal name="Dezimalsekunden(2:0)" />
        <signal name="Dezimalsekunden(2)" />
        <signal name="Dezimalsekunden(0)" />
        <signal name="Minuten(3:0)" />
        <signal name="Minuten(3)" />
        <signal name="Minuten(0)" />
        <signal name="Dezimalminuten(2:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_80" />
        <signal name="CLEAR">
        </signal>
        <signal name="XLXN_90" />
        <signal name="RESET" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="CLK" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <port polarity="Output" name="Hundertstel(3:0)" />
        <port polarity="Output" name="Zehntel(3:0)" />
        <port polarity="Output" name="Sekunden(3:0)" />
        <port polarity="Output" name="Dezimalsekunden(2:0)" />
        <port polarity="Output" name="Minuten(3:0)" />
        <port polarity="Output" name="Dezimalminuten(2:0)" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLK" />
        <blockdef name="BCD_4">
            <timestamp>2016-6-16T6:57:38</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="And_gate">
            <timestamp>2016-5-24T10:36:48</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="BCD_3">
            <timestamp>2016-5-25T10:28:13</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="NAND_gate">
            <timestamp>2016-5-24T10:36:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="INV_gate">
            <timestamp>2016-6-16T9:38:3</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="BCD_4" name="XLXI_2">
            <blockpin signalname="XLXN_103" name="CLK" />
            <blockpin signalname="XLXN_102" name="RESET" />
            <blockpin signalname="XLXN_51" name="CLEAR" />
            <blockpin signalname="Hundertstel(3:0)" name="BCD(3:0)" />
        </block>
        <block symbolname="BCD_4" name="XLXI_3">
            <blockpin signalname="XLXN_75" name="CLK" />
            <blockpin signalname="XLXN_102" name="RESET" />
            <blockpin signalname="XLXN_56" name="CLEAR" />
            <blockpin signalname="Zehntel(3:0)" name="BCD(3:0)" />
        </block>
        <block symbolname="And_gate" name="XLXI_4">
            <blockpin signalname="Hundertstel(0)" name="in0" />
            <blockpin signalname="Hundertstel(3)" name="in1" />
            <blockpin signalname="XLXN_75" name="out0" />
        </block>
        <block symbolname="BCD_4" name="XLXI_6">
            <blockpin signalname="XLXN_76" name="CLK" />
            <blockpin signalname="XLXN_102" name="RESET" />
            <blockpin signalname="XLXN_52" name="CLEAR" />
            <blockpin signalname="Sekunden(3:0)" name="BCD(3:0)" />
        </block>
        <block symbolname="BCD_3" name="XLXI_7">
            <blockpin signalname="XLXN_78" name="CLK" />
            <blockpin signalname="XLXN_102" name="RESET" />
            <blockpin signalname="Dezimalsekunden(2:0)" name="BCD(2:0)" />
            <blockpin signalname="XLXN_57" name="CLEAR" />
        </block>
        <block symbolname="And_gate" name="XLXI_8">
            <blockpin signalname="Zehntel(3)" name="in0" />
            <blockpin signalname="Zehntel(0)" name="in1" />
            <blockpin signalname="XLXN_76" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_9">
            <blockpin signalname="Sekunden(0)" name="in0" />
            <blockpin signalname="Sekunden(3)" name="in1" />
            <blockpin signalname="XLXN_78" name="out0" />
        </block>
        <block symbolname="BCD_4" name="XLXI_10">
            <blockpin signalname="XLXN_80" name="CLK" />
            <blockpin signalname="XLXN_102" name="RESET" />
            <blockpin signalname="XLXN_53" name="CLEAR" />
            <blockpin signalname="Minuten(3:0)" name="BCD(3:0)" />
        </block>
        <block symbolname="BCD_3" name="XLXI_11">
            <blockpin signalname="XLXN_77" name="CLK" />
            <blockpin signalname="XLXN_102" name="RESET" />
            <blockpin signalname="Dezimalminuten(2:0)" name="BCD(2:0)" />
            <blockpin signalname="XLXN_58" name="CLEAR" />
        </block>
        <block symbolname="And_gate" name="XLXI_12">
            <blockpin signalname="Minuten(0)" name="in0" />
            <blockpin signalname="Minuten(3)" name="in1" />
            <blockpin signalname="XLXN_77" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_13">
            <blockpin signalname="Dezimalsekunden(2)" name="in0" />
            <blockpin signalname="Dezimalsekunden(0)" name="in1" />
            <blockpin signalname="XLXN_80" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_14">
            <blockpin signalname="XLXN_51" name="in0" />
            <blockpin signalname="XLXN_52" name="in1" />
            <blockpin signalname="XLXN_54" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_15">
            <blockpin signalname="XLXN_54" name="in0" />
            <blockpin signalname="XLXN_53" name="in1" />
            <blockpin signalname="XLXN_55" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_16">
            <blockpin signalname="XLXN_56" name="in0" />
            <blockpin signalname="XLXN_57" name="in1" />
            <blockpin signalname="XLXN_59" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_17">
            <blockpin signalname="XLXN_58" name="in0" />
            <blockpin signalname="XLXN_55" name="in1" />
            <blockpin signalname="XLXN_60" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_18">
            <blockpin signalname="XLXN_59" name="in0" />
            <blockpin signalname="XLXN_60" name="in1" />
            <blockpin signalname="CLEAR" name="out0" />
        </block>
        <block symbolname="NAND_gate" name="XLXI_20">
            <blockpin signalname="RESET" name="a" />
            <blockpin signalname="CLEAR" name="b" />
            <blockpin signalname="XLXN_106" name="c" />
        </block>
        <block symbolname="INV_gate" name="XLXI_21">
            <blockpin signalname="XLXN_106" name="in0" />
            <blockpin signalname="XLXN_102" name="out0" />
        </block>
        <block symbolname="And_gate" name="XLXI_22">
            <blockpin signalname="CLK" name="in0" />
            <blockpin signalname="XLXN_106" name="in1" />
            <blockpin signalname="XLXN_103" name="out0" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="416" y="736" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Hundertstel(3:0)">
            <wire x2="1040" y1="704" y2="704" x1="800" />
            <wire x2="1040" y1="512" y2="608" x1="1040" />
            <wire x2="1040" y1="608" y2="688" x1="1040" />
            <wire x2="1040" y1="688" y2="704" x1="1040" />
        </branch>
        <bustap x2="1136" y1="688" y2="688" x1="1040" />
        <bustap x2="1136" y1="608" y2="608" x1="1040" />
        <branch name="Hundertstel(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1176" y="608" type="branch" />
            <wire x2="1312" y1="608" y2="608" x1="1136" />
        </branch>
        <branch name="Zehntel(3:0)">
            <wire x2="2288" y1="688" y2="688" x1="2240" />
            <wire x2="2288" y1="688" y2="704" x1="2288" />
            <wire x2="2304" y1="704" y2="704" x1="2288" />
            <wire x2="2400" y1="704" y2="704" x1="2304" />
            <wire x2="2416" y1="704" y2="704" x1="2400" />
            <wire x2="2416" y1="512" y2="704" x1="2416" />
        </branch>
        <instance x="2240" y="960" name="XLXI_8" orien="M0">
        </instance>
        <bustap x2="2304" y1="704" y2="800" x1="2304" />
        <branch name="Zehntel(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="816" type="branch" />
            <wire x2="2304" y1="864" y2="864" x1="2240" />
            <wire x2="2304" y1="800" y2="816" x1="2304" />
            <wire x2="2304" y1="816" y2="864" x1="2304" />
        </branch>
        <bustap x2="2400" y1="704" y2="800" x1="2400" />
        <branch name="Zehntel(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="824" type="branch" />
            <wire x2="2400" y1="928" y2="928" x1="2240" />
            <wire x2="2400" y1="800" y2="928" x1="2400" />
        </branch>
        <instance x="416" y="1216" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Sekunden(3:0)">
            <wire x2="912" y1="1184" y2="1184" x1="800" />
            <wire x2="912" y1="1024" y2="1104" x1="912" />
            <wire x2="912" y1="1104" y2="1168" x1="912" />
            <wire x2="912" y1="1168" y2="1184" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="1024" name="Sekunden(3:0)" orien="R270" />
        <instance x="1280" y="1200" name="XLXI_9" orien="R0">
        </instance>
        <bustap x2="1008" y1="1168" y2="1168" x1="912" />
        <branch name="Sekunden(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1032" y="1168" type="branch" />
            <wire x2="1280" y1="1168" y2="1168" x1="1008" />
        </branch>
        <bustap x2="1008" y1="1104" y2="1104" x1="912" />
        <branch name="Sekunden(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1104" type="branch" />
            <wire x2="1024" y1="1104" y2="1104" x1="1008" />
            <wire x2="1280" y1="1104" y2="1104" x1="1024" />
        </branch>
        <instance x="1856" y="1200" name="XLXI_7" orien="R0">
        </instance>
        <branch name="Dezimalsekunden(2:0)">
            <wire x2="2384" y1="1104" y2="1104" x1="2240" />
            <wire x2="2480" y1="1104" y2="1104" x1="2384" />
            <wire x2="2592" y1="1104" y2="1104" x1="2480" />
        </branch>
        <bustap x2="2384" y1="1104" y2="1200" x1="2384" />
        <branch name="Dezimalsekunden(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1224" type="branch" />
            <wire x2="2384" y1="1328" y2="1328" x1="1664" />
            <wire x2="2384" y1="1200" y2="1328" x1="2384" />
        </branch>
        <bustap x2="2480" y1="1104" y2="1200" x1="2480" />
        <branch name="Dezimalsekunden(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1224" type="branch" />
            <wire x2="2480" y1="1392" y2="1392" x1="1664" />
            <wire x2="2480" y1="1200" y2="1392" x1="2480" />
        </branch>
        <instance x="1664" y="1424" name="XLXI_13" orien="M0">
        </instance>
        <instance x="416" y="1664" name="XLXI_10" orien="R0">
        </instance>
        <branch name="Minuten(3:0)">
            <wire x2="912" y1="1632" y2="1632" x1="800" />
            <wire x2="912" y1="1472" y2="1568" x1="912" />
            <wire x2="912" y1="1568" y2="1632" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="1472" name="Minuten(3:0)" orien="R270" />
        <instance x="1280" y="1664" name="XLXI_12" orien="R0">
        </instance>
        <bustap x2="1008" y1="1632" y2="1632" x1="912" />
        <branch name="Minuten(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1632" type="branch" />
            <wire x2="1024" y1="1632" y2="1632" x1="1008" />
            <wire x2="1280" y1="1632" y2="1632" x1="1024" />
        </branch>
        <bustap x2="1008" y1="1568" y2="1568" x1="912" />
        <branch name="Minuten(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1032" y="1568" type="branch" />
            <wire x2="1280" y1="1568" y2="1568" x1="1008" />
        </branch>
        <instance x="1856" y="1664" name="XLXI_11" orien="R0">
        </instance>
        <branch name="Dezimalminuten(2:0)">
            <wire x2="2608" y1="1568" y2="1568" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1568" name="Dezimalminuten(2:0)" orien="R0" />
        <instance x="848" y="1904" name="XLXI_14" orien="R0">
        </instance>
        <instance x="848" y="2112" name="XLXI_15" orien="R0">
        </instance>
        <instance x="1856" y="1888" name="XLXI_16" orien="R0">
        </instance>
        <instance x="1856" y="2096" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="832" y1="640" y2="640" x1="800" />
            <wire x2="832" y1="640" y2="1808" x1="832" />
            <wire x2="848" y1="1808" y2="1808" x1="832" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="864" y1="896" y2="896" x1="304" />
            <wire x2="864" y1="896" y2="1120" x1="864" />
            <wire x2="304" y1="896" y2="1872" x1="304" />
            <wire x2="848" y1="1872" y2="1872" x1="304" />
            <wire x2="864" y1="1120" y2="1120" x1="800" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="864" y1="1728" y2="1728" x1="752" />
            <wire x2="752" y1="1728" y2="2080" x1="752" />
            <wire x2="848" y1="2080" y2="2080" x1="752" />
            <wire x2="864" y1="1568" y2="1568" x1="800" />
            <wire x2="864" y1="1568" y2="1728" x1="864" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="784" y1="1920" y2="2016" x1="784" />
            <wire x2="848" y1="2016" y2="2016" x1="784" />
            <wire x2="1312" y1="1920" y2="1920" x1="784" />
            <wire x2="1312" y1="1808" y2="1808" x1="1232" />
            <wire x2="1312" y1="1808" y2="1920" x1="1312" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1536" y1="2016" y2="2016" x1="1232" />
            <wire x2="1536" y1="2016" y2="2064" x1="1536" />
            <wire x2="1856" y1="2064" y2="2064" x1="1536" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1840" y1="1696" y2="1792" x1="1840" />
            <wire x2="1856" y1="1792" y2="1792" x1="1840" />
            <wire x2="2272" y1="1696" y2="1696" x1="1840" />
            <wire x2="2272" y1="624" y2="624" x1="2240" />
            <wire x2="2272" y1="624" y2="1696" x1="2272" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1808" y1="1712" y2="1856" x1="1808" />
            <wire x2="1856" y1="1856" y2="1856" x1="1808" />
            <wire x2="2304" y1="1712" y2="1712" x1="1808" />
            <wire x2="2304" y1="1168" y2="1168" x1="2240" />
            <wire x2="2304" y1="1168" y2="1712" x1="2304" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="1856" y1="2000" y2="2000" x1="1792" />
            <wire x2="1792" y1="2000" y2="2176" x1="1792" />
            <wire x2="2288" y1="2176" y2="2176" x1="1792" />
            <wire x2="2288" y1="1632" y2="1632" x1="2240" />
            <wire x2="2288" y1="1632" y2="2176" x1="2288" />
        </branch>
        <instance x="2432" y="1968" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_59">
            <wire x2="2336" y1="1792" y2="1792" x1="2240" />
            <wire x2="2336" y1="1792" y2="1872" x1="2336" />
            <wire x2="2432" y1="1872" y2="1872" x1="2336" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="2336" y1="2000" y2="2000" x1="2240" />
            <wire x2="2336" y1="1936" y2="2000" x1="2336" />
            <wire x2="2432" y1="1936" y2="1936" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="1040" y="512" name="Hundertstel(3:0)" orien="R270" />
        <iomarker fontsize="28" x="2416" y="512" name="Zehntel(3:0)" orien="R270" />
        <iomarker fontsize="28" x="2592" y="1104" name="Dezimalsekunden(2:0)" orien="R0" />
        <branch name="Hundertstel(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1176" y="688" type="branch" />
            <wire x2="1168" y1="688" y2="688" x1="1136" />
            <wire x2="1168" y1="672" y2="688" x1="1168" />
            <wire x2="1312" y1="672" y2="672" x1="1168" />
        </branch>
        <instance x="1312" y="704" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_76">
            <wire x2="368" y1="864" y2="992" x1="368" />
            <wire x2="416" y1="992" y2="992" x1="368" />
            <wire x2="1856" y1="864" y2="864" x1="368" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="1856" y1="1568" y2="1568" x1="1664" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="1856" y1="1104" y2="1104" x1="1664" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="352" y1="1328" y2="1440" x1="352" />
            <wire x2="416" y1="1440" y2="1440" x1="352" />
            <wire x2="1280" y1="1328" y2="1328" x1="352" />
        </branch>
        <instance x="1856" y="720" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_75">
            <wire x2="1712" y1="608" y2="608" x1="1696" />
            <wire x2="1856" y1="496" y2="496" x1="1712" />
            <wire x2="1712" y1="496" y2="608" x1="1712" />
        </branch>
        <branch name="CLEAR">
            <wire x2="2832" y1="1872" y2="1872" x1="2816" />
            <wire x2="3024" y1="1808" y2="1808" x1="2832" />
            <wire x2="2832" y1="1808" y2="1872" x1="2832" />
        </branch>
        <branch name="RESET">
            <wire x2="3008" y1="1680" y2="1680" x1="2976" />
            <wire x2="3008" y1="1680" y2="1744" x1="3008" />
            <wire x2="3024" y1="1744" y2="1744" x1="3008" />
        </branch>
        <instance x="3008" y="1328" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_102">
            <wire x2="336" y1="208" y2="1184" x1="336" />
            <wire x2="416" y1="1184" y2="1184" x1="336" />
            <wire x2="3280" y1="208" y2="208" x1="336" />
            <wire x2="3392" y1="208" y2="208" x1="3280" />
            <wire x2="3392" y1="208" y2="1216" x1="3392" />
            <wire x2="3408" y1="1216" y2="1216" x1="3392" />
            <wire x2="3408" y1="1216" y2="1280" x1="3408" />
            <wire x2="3408" y1="1280" y2="1296" x1="3408" />
            <wire x2="352" y1="192" y2="704" x1="352" />
            <wire x2="416" y1="704" y2="704" x1="352" />
            <wire x2="3280" y1="192" y2="192" x1="352" />
            <wire x2="3280" y1="192" y2="1216" x1="3280" />
            <wire x2="3392" y1="1216" y2="1216" x1="3280" />
            <wire x2="400" y1="1248" y2="1632" x1="400" />
            <wire x2="416" y1="1632" y2="1632" x1="400" />
            <wire x2="2880" y1="1248" y2="1248" x1="400" />
            <wire x2="1776" y1="256" y2="688" x1="1776" />
            <wire x2="1856" y1="688" y2="688" x1="1776" />
            <wire x2="2960" y1="256" y2="256" x1="1776" />
            <wire x2="2960" y1="256" y2="1216" x1="2960" />
            <wire x2="3024" y1="1216" y2="1216" x1="2960" />
            <wire x2="3024" y1="1216" y2="1232" x1="3024" />
            <wire x2="3280" y1="1216" y2="1216" x1="3024" />
            <wire x2="1856" y1="1168" y2="1168" x1="1776" />
            <wire x2="1776" y1="1168" y2="1216" x1="1776" />
            <wire x2="2880" y1="1216" y2="1216" x1="1776" />
            <wire x2="2960" y1="1216" y2="1216" x1="2880" />
            <wire x2="2880" y1="1216" y2="1248" x1="2880" />
            <wire x2="1792" y1="1232" y2="1632" x1="1792" />
            <wire x2="1856" y1="1632" y2="1632" x1="1792" />
            <wire x2="3024" y1="1232" y2="1232" x1="1792" />
            <wire x2="3408" y1="1296" y2="1296" x1="3392" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="400" y1="400" y2="512" x1="400" />
            <wire x2="416" y1="512" y2="512" x1="400" />
            <wire x2="768" y1="400" y2="400" x1="400" />
            <wire x2="768" y1="64" y2="64" x1="688" />
            <wire x2="768" y1="64" y2="400" x1="768" />
        </branch>
        <instance x="304" y="160" name="XLXI_22" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="304" y1="64" y2="64" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="64" name="CLK" orien="R180" />
        <branch name="XLXN_106">
            <wire x2="304" y1="128" y2="128" x1="256" />
            <wire x2="256" y1="128" y2="224" x1="256" />
            <wire x2="1232" y1="224" y2="224" x1="256" />
            <wire x2="1232" y1="224" y2="1456" x1="1232" />
            <wire x2="3424" y1="1456" y2="1456" x1="1232" />
            <wire x2="3424" y1="1456" y2="1744" x1="3424" />
            <wire x2="3008" y1="1296" y2="1296" x1="2944" />
            <wire x2="2944" y1="1296" y2="1392" x1="2944" />
            <wire x2="3424" y1="1392" y2="1392" x1="2944" />
            <wire x2="3424" y1="1392" y2="1456" x1="3424" />
            <wire x2="3424" y1="1744" y2="1744" x1="3408" />
        </branch>
        <instance x="3024" y="1840" name="XLXI_20" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2976" y="1680" name="RESET" orien="R180" />
    </sheet>
</drawing>