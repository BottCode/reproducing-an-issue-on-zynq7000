all: test

test:
	mkdir obj -p
	gprbuild demo.gpr
	arm-eabi-objdump obj/main -D > obj/main.s

clean:
	gprclean demo.gpr