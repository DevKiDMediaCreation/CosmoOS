BUILD_DIR?=build
ASM?=nasm

.PHONY: all stage1 clean

all: stage1

stage1: $(BUILD_DIR)/stage1.bin

$(BUILD_DIR)/stage1.bin:
#	@mkdir -p $(BUILD_DIR)
	$(ASM) boot.asm -f bin -o $(BUILD_DIR)/stage1.bin

clean:
	rm -rf $(BUILD_DIR)/stage1.bin