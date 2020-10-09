SRCDIR = src
OUTDIR = $(shell pwd)/png
SRCS = $(shell find $(SRCDIR) -type f -name '*.puml' | sed s,$(SRCDIR)/,,)
PNGS = $(addprefix $(OUTDIR)/, $(SRCS:puml=png))
PLANTUML = plantuml
PUML_VARS = PLANTUML_LIMIT_SIZE=8192

default: all

all: $(PNGS)

.PHONY: clean
clean:
	rm -rf $(OUTDIR)

$(OUTDIR)/%.png : $(SRCDIR)/%.puml
	$(PUML_VARS) $(PLANTUML) $^ -o $(dir $@)

rebuild: clean all
