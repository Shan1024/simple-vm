// Type which represent the supported operations of the VM (this is similar to an enum).
public type OPCODE "HALT"|"IADD"|"ISUB"|"ICONST"|"PRINT";

// Instructs to stop executing the program.
@final public OPCODE HALT = "HALT";

// Instructs to add the top 2 values of the stack.
@final public OPCODE IADD = "IADD";

// Instructs to calculate the difference of top 2 values of the stack.
@final public OPCODE ISUB = "ISUB";

// Instructs to load a value to stack.
@final public OPCODE ICONST = "ICONST";

// Instructs to print the value which is at the top of the stack.
@final public OPCODE PRINT = "PRINT";
