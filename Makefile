SRC_DIR := ./src
DIST_DIR := ./dist
SRC_FILE := $(SRC_DIR)/index.md
DIST_FILE := $(DIST_DIR)/index.md

all: $(DIST_FILE)

$(DIST_FILE): $(SRC_FILE)
	mkdir -p $(DIST_DIR)
	base64 $(SRC_FILE) > $(DIST_FILE)

decode: 
	base64 -d $(DIST_FILE) 

clean:
	rm -rf $(DIST_DIR)

.PHONY: all clean
