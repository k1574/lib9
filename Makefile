include config.mk

LIB=${NAME}.a

all: ${LIB}

${LIB}: ${OFILES}
	${AR} ${ARFLAGS} ${LIB} ${OFILES}

.c.o:
	${CC} -c -o $@ ${CPPFLAGS} ${CFLAGS} $<

clean:
	rm -f ${OFILES} ${LIB}
