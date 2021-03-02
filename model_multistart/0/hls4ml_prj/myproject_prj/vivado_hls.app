<project xmlns="com.autoesl.autopilot.project" name="myproject_prj" top="myproject">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow askAgain="false" name="csim" ldflags="" mflags="" csimMode="0" lastCsimMode="0" setup="false" optimizeCompile="false" clean="false"/>
    </Simulation>
    <files xmlns="">
        <file name="../../tb_data" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../firmware/weights" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../myproject_test.cpp" sc="0" tb="1" cflags=" -std=c++0x -Wno-unknown-pragmas" blackbox="false"/>
        <file name="firmware/myproject.cpp" sc="0" tb="false" cflags="-std=c++0x" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

