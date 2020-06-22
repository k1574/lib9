<mkconfig

TGT=$NAME.a

all :VQ: $TGT
	echo -n
$TGT : $OBJ
	$AR $ARFLAGS $TGT $OBJ

%.o : %.c
	$CC -c -o $target $CPPFLAGS $CFLAGS  $prereq

clean:
	rm -f $OBJ $TGT
