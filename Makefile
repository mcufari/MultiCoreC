FLAGS="-fopenmp"
COMP="-O3"

.SILET: all

hello:
	@gcc ${FLAGS} hello.c -o hello

pi_serial:
	@gcc ${FLAGS} pi_serial.c -o pi_serial


pi_parallel:
	@gcc ${FLAGS} pi_parallel.c -o pi_parallel

pi_parallel_pad:
	@gcc ${FLAGS} pi_parallel_pad.c -o pi_parallel_pad

pi_loop_redux:
	@gcc ${FLAGS} pi_loop_redux.c -o pi_loop_redux

pi_atomic:
	@gcc ${FLAGS} pi_atomic.c -o pi_atomic

pi_critical:
	@gcc ${FLAGS} pi_critical.c -o pi_critical


mandel_correct:
	@gcc ${FLAGS} mandel_correct.c -o mandel_c

mandel_wrong:
	@gcc ${FLAGS} mandel_wrong.c -o mandel_w

pi_final:
	@gcc ${FLAGS} pi_final.c -o pi_final

all:
	@make -s hello
	@make -s pi_serial
	@make -s pi_parallel
	@make -s pi_parallel_pad
	@make -s pi_loop_redux
	@make -s pi_atomic
	@make -s pi_critical
	@make -s pi_final
	@make -s mandel_wrong
	@make -s mandel_correct

clean:
	@rm -f hello
	@rm -f pi_serial
	@rm -f pi_parallel
	@rm -f pi_parallel_pad
	@rm -f pi_atomic
	@rm -f pi_critical
	@rm -f pi_loop_redux
	@rm -f mandel_w
	@rm -f mandel_c
	@rm -f pi_final	
