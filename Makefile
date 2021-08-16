# Project:   SlateFC


# Toolflags:
CCflags = -c -depend !Depend -IC: -throwback 
Linkflags = -aif -o $@ 
ObjAsmflags = -depend !Depend -ThrowBack -Stamp -quit -CloseExec
CMHGflags = 
LibFileflags = -c -o $@
Squeezeflags = -o $@
AAsmflags = -depend !Depend -quit -CloseExec -To $@ -From


# Final targets:
@.!RunImage:   @.o.!RunImage @.o.AULib @.o.Pick @.o.create \
        @.o.data_io @.o.apply @.o.gpick @.o.gapply @.o.add @.o.rules \
        @.^.^.^.^.RISC_OSLib.o.RISC_OSLib @.^.^.^.^.CLib.o.Stubs 
        Link $(Linkflags) @.o.!RunImage @.o.AULib @.o.Pick \
        @.o.create @.o.data_io @.o.apply @.o.gpick @.o.gapply @.o.add @.o.rules \
        @.^.^.^.^.RISC_OSLib.o.RISC_OSLib @.^.^.^.^.CLib.o.Stubs 


# User-editable dependencies:

# Static dependencies:
@.o.!RunImage:   @.c.!RunImage
        cc $(ccflags) -o @.o.!RunImage @.c.!RunImage 
@.o.AULib:   @.c.AULib
        cc $(ccflags) -o @.o.AULib @.c.AULib 
@.o.Pick:   @.c.Pick
        cc $(ccflags) -o @.o.Pick @.c.Pick 
@.o.create:   @.c.create
        cc $(ccflags) -o @.o.create @.c.create 
@.o.data_io:   @.c.data_io
        cc $(ccflags) -o @.o.data_io @.c.data_io 
@.o.apply:   @.c.apply
        cc $(ccflags) -o @.o.apply @.c.apply 
@.o.gpick:   @.c.gpick
        cc $(ccflags) -o @.o.gpick @.c.gpick 
@.o.gapply:   @.c.gapply
        cc $(ccflags) -o @.o.gapply @.c.gapply 
@.o.add:   @.c.add
        cc $(ccflags) -o @.o.add @.c.add 
@.o.rules:   @.c.rules
        cc $(ccflags) -o @.o.rules @.c.rules 


# Dynamic dependencies:
o.AULib:	c.AULib
o.AULib:	h.AUlib
o.AULib:	C:h.swis
o.AULib:	C:h.kernel
o.rules:	c.rules
o.rules:	h.rules
o.add:	c.add
o.add:	h.AUlib
o.add:	C:h.swis
o.add:	C:h.kernel
o.add:	h.constant
o.create:	c.create
o.create:	h.constant
o.create:	h.data_io
o.gpick:	c.gpick
o.gpick:	h.constant
o.gpick:	h.data_io
o.gpick:	h.types
o.gpick:	h.constant
o.gapply:	c.gapply
o.gapply:	h.constant
o.gapply:	h.data_io
o.gapply:	h.types
o.gapply:	h.constant
o.!RunImage:	c.!RunImage
o.!RunImage:	h.add
o.!RunImage:	h.apply
o.!RunImage:	h.types
o.!RunImage:	h.constant
o.!RunImage:	h.AULib
o.!RunImage:	C:h.swis
o.!RunImage:	C:h.kernel
o.!RunImage:	h.constant
o.!RunImage:	h.create
o.!RunImage:	h.data_io
o.!RunImage:	h.gapply
o.!RunImage:	h.types
o.!RunImage:	h.gpick
o.!RunImage:	h.constant
o.!RunImage:	h.types
o.!RunImage:	h.pick
o.!RunImage:	h.types
o.!RunImage:	h.types
o.apply:	c.apply
o.apply:	h.constant
o.apply:	h.data_io
o.apply:	h.gapply
o.apply:	h.types
o.apply:	h.constant
o.apply:	h.types
o.Pick:	c.Pick
o.Pick:	h.constant
o.Pick:	h.data_io
o.Pick:	h.gpick
o.Pick:	h.constant
o.Pick:	h.types
o.Pick:	h.constant
o.Pick:	h.pick
o.Pick:	h.types
o.Pick:	h.rules
o.Pick:	h.types
o.data_io:	c.data_io
o.data_io:	h.constant
o.data_io:	h.data_io
