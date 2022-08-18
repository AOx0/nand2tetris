@default:
    just --list

# Open ./tools/HardwareSimulator.sh
@hardware:
    ./tools/HardwareSimulator.sh &> /dev/null

# Open ./tools/Assembler.sh
@assembler:
  ./tools/Assembler.sh &> /dev/null

# Open ./tools/CPUEmulator.sh
@cpu:
  ./tools/CPUEmulator.sh
