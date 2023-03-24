VCS = vcs -full64 -sverilog -timescale=1ns/1ns \
		+v2k \
		-debug_access+all -kdb -lca\
		-f file.f	
comp:
	$(VCS) 

verdi:
	# verdi -ssf rtl.fsdb
	./simv -gui=verdi 

clean:
	-rm -rf csrc simv* *.lib *.lib++ nLint*
	-rm -rf *.log *.vpd *.fsdb* *.key *log 
	-rm -rf novas*
	-rm -rf verdiLog DVEfiles
	-rm -rf .synopsys_dve_rebuild.tcl
