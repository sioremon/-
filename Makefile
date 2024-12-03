SRC_DIR := ./src
DIST_DIR := ./dist
SRC_FILE := $(SRC_DIR)/index.md
DIST_FILE := $(DIST_DIR)/index.md

all: 
	base64 $(SRC_FILE) | base64 > $(DIST_FILE)

decode: 
	base64 -d $(DIST_FILE) | base64 -d 

clean:
	rm -rf $(DIST_DIR)

.PHONY: all clean
