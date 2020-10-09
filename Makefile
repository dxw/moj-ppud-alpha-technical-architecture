OUTDIR = $(shell pwd)/png
SRCS = $(shell find . -type f -name '*.puml')
PNGS = $(addprefix $(OUTDIR)/, $(SRCS:puml=png))
PLANTUML = plantuml
PUML_VARS = PLANTUML_LIMIT_SIZE=8192

default: all

all: $(PNGS)

.PHONY: clean
clean:
	rm -rf $(OUTDIR)

$(OUTDIR)/%.png : %.puml
	$(PUML_VARS) $(PLANTUML) $^ -o $(dir $@)
