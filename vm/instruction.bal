public type Instruction object {

    public OPCODE opcode;
    public int[] operands;

    // Operands are defined as rest parameter which can take 0 or more arguments.
    public new(opcode, int... args) {
        operands = args;
    }
};
