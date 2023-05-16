LAB_DIR=/home/hs/learning/VCS_learning


# code coverage command
CM = -cm line+cond+fsm+branch+tgl
CM_NAME = -cm_name simv
CM_DIR = -cm_dir ./covdir.vdb



all :clean elab rung
all1:clean elab run cov verdi
all2:clean elab run verdi

elab:
	vcs -full64 -LDFLAGS -Wl,-no-as-needed -debug_acc+all -timescale=1ns/1ns \
	-fsdb -sverilog -l comp.log  \
	-f file.f \
	${CM} \
	${CM_NAME} \
	${CM_DIR} 


run:
	./simv -l run.log \
	-f file.f \
	${CM} \
	${CM_NAME} \
	${CM_DIR} 



rung:
	./simv -gui -l run.log \
	-f file.f \
	${CM} \
	${CM_NAME} \
	${CM_DIR} 

verdi:
	verdi -ssf ./*.fsdb &

cov:
	dve -full64 -covdir *.vdb &

clean:
	rm -rf  AN.DB \
	rm -rf  DVEfiles \
	rm -rf  csrc \
	rm -rf  simv.* \
	rm -rf  *simv \
	rm -rf  inter.vpd \
	rm -rf  ucli.key \
	rm -rf  *.log \
	rm -rf  verdiLog \
	rm -rf  novas* \
	rm -rf  *.fsdb \
	rm -rf  *.vdb

