#!/usr/bin/make
KIBOT=kibot
DEBUG=
OUT_DIR=build
KIBOT_YAML=.kibot.yaml
PRJ=5uH_LISN
BOARD=$(PRJ).kicad_sch
BOARD_PCB=$(PRJ).kicad_pcb

FOLDER_NAME=5uH_LISN
ADD_INFO_FOLDER=Info

all: generate

generate:
	$(KIBOT) $(DEBUG) -c $(KIBOT_YAML) -e $(BOARD) -b $(BOARD_PCB) -d $(OUT_DIR)/$(FOLDER_NAME)

copy_info:
	cp	README.md $(OUT_DIR)/README_FIRST.md
	cp	$(OUT_DIR)/*.png $(ADD_INFO_FOLDER)/Images/
	cp	-r $(ADD_INFO_FOLDER)/ $(OUT_DIR)/$(FOLDER_NAME)/

.PHONY: generate copy_info
