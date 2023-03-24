wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/hs/vcs_test/temp/inter.fsdb}
wvSetCursor -win $_nWave2 23.290407
wvSetCursor -win $_nWave2 10.351292
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvGetSignalSetScope -win $_nWave2 "/test"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvRenameGroup -win $_nWave2 {G1} {test}
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvGetSignalSetOptions -win $_nWave2 -input on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -input off
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -input on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -input off
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvGetSignalSetOptions -win $_nWave2 -all on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -all off
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetOptions -win $_nWave2 -all on
wvGetSignalSetSignalFilter -win $_nWave2 "*"
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/add_inst"
wvSetPosition -win $_nWave2 {("test" 8)}
wvSetPosition -win $_nWave2 {("test" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"test" \
{/test/A\[20:0\]} \
{/test/add_inst/A\[20:0\]} \
{/test/add_inst/A_signed\[21:0\]} \
{/test/B\[17:0\]} \
{/test/add_inst/A\[20:0\]} \
{/test/add_inst/A_signed\[21:0\]} \
{/test/add_inst/B\[17:0\]} \
{/test/add_inst/C\[22:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "test" 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("test" 8)}
wvSetPosition -win $_nWave2 {("test" 8)}
wvSetPosition -win $_nWave2 {("test" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"test" \
{/test/A\[20:0\]} \
{/test/add_inst/A\[20:0\]} \
{/test/add_inst/A_signed\[21:0\]} \
{/test/B\[17:0\]} \
{/test/add_inst/A\[20:0\]} \
{/test/add_inst/A_signed\[21:0\]} \
{/test/add_inst/B\[17:0\]} \
{/test/add_inst/C\[22:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "test" 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("test" 8)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 106.879714 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 62.007493 -snap {("test" 5)}
debExit
