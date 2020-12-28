CC=gcc -m64 -D _OS_Linux_
SDIR = source
ODIR = build
LIBDIR = .
BFile = ./bin/vking.bin

_EXOBJS = 
EXOBJS = $(patsubst %,$(LIBDIR)/%,$(_EXOBJS))

_OBJS = main.o
OBJS = $(patsubst %,$(ODIR)/%,$(_OBJS))

$(ODIR)/%.o: $(SDIR)/%.c 
	$(CC) -c $(INC) -o $@ $< $(CFLAGS) 
	
#------------------------------------
build : $(OBJS)
	@$(CC) -o $(BFile) $(OBJS) $(EXOBJS)

test :
	@$(BFile)

clean : $(OBJS)
	@rm -f $(BFile) $(OBJS)