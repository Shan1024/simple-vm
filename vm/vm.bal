import ballerina/io;

int[] stack; // Represents the stack.

int ip; // Points to the current instruction which we are executing.
int sp = -1; // Sets the initial index of the stack pointer.

public function execute(Instruction[] instructions) {
    // Loop through instructions.
    while (ip < lengthof instructions) {
        // Fetch the instruction.
        Instruction instruction = instructions[ip];
        // Increment the instruction pointer.
        ip++;

        if (instruction.opcode == HALT) {
            return; // Halt the program (exit).
        } else if (instruction.opcode == PRINT) {
            // Get the top value of the stack.
            int i = stack[sp];
            io:println(i); // Print the value.
        } else if (instruction.opcode == ICONST) {
            // Get the first operand.
            int i = instruction.operands[0];
            // Push the value to the stack.
            sp++;
            stack[sp] = i;
        } else if (instruction.opcode == IADD) {
            // Add the top two values of the stack and push the result to the stack.
            int i = stack[sp];
            sp--;
            int j = stack[sp];
            stack[sp] = i + j;
        } else if (instruction.opcode == ISUB) {
            // Get the difference of the top two values of the stack and push the result to the stack.
            int i = stack[sp];
            sp--;
            int j = stack[sp];
            stack[sp] = j - i;
        } else {
            // If we encounter an unknown opcode, we throw an error which will stop the program execution.
            string msg = "Unknown opcode: " + io:sprintf("%r", instruction.opcode);
            error err = { message: msg };
            throw err;
        }
    }
}
