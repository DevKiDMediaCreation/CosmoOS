BUILD_DIR?=build
ASM?=nasm

.PHONY: all kernel clean

all: kernel

kernel: $(BUILD_DIR)/kernel.bin

$(BUILD_DIR)/kernel.bin:
#	@mkdir -p $(BUILD_DIR)
	$(ASM) main.asm -f bin -o $(BUILD_DIR)/kernel.bin

clean:
	rm -rf $(BUILD_DIR)/kenrel.bin