import vm;

function main(string... args) {

    vm:Instruction[] program = [
        new(vm:ICONST, 10),
        new(vm:ICONST, 20),
        new(vm:IADD),
        new(vm:PRINT),
        new(vm:ICONST, 5),
        new(vm:ISUB),
        new(vm:PRINT),
        new(vm:HALT)
    ];

    vm:execute(program);
}
