CC=g++ -m64 -D _OS_Linux_
CFLAGS = 
SDIR = source
ODIR = build
BFile = bin/vking.bin

_INCDIRS = source
INCDIRS = $(patsubst %,-I %,$(_INCDIRS))

_DYNAMIC_OBJDIRS = 
DYNAMIC_OBJDIRS = $(patsubst %,-ld %,$(_DYNAMIC_OBJDIRS))

_STATIC_LIBDIRS = 
STATIC_LIBDIRS = $(patsubst %,-l %,$(_STATIC_LIBDIRS))

EXOBJS = 

_OBJS = $(wildcard $(SDIR)/*.c)
_OBJS1 = $(notdir $(_OBJS))
_OBJS2 = $(patsubst %.c,%.o,$(_OBJS1))
OBJS = $(patsubst %,$(ODIR)/%,$(_OBJS2))

$(ODIR)/%.o: $(SDIR)/%.c
	@$(CC) $(INCDIRS) -c -o $@ $< $(CFLAGS) 

#------------------------------------
build : $(OBJS)
	@$(CC) $(STATIC_LIBDIRS) $(DYNAMIC_OBJDIRS) -o $(BFile) $(OBJS) $(EXOBJS)

test :
	@$(BFile)

clean : $(OBJS)
	@rm -f $(BFile) $(OBJS)