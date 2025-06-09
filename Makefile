TMUX_CONF := tmux.conf
CONF_FILES := $(filter-out $(TMUX_CONF), $(wildcard *.conf))

.PHONY: all

all: $(TMUX_CONF)

$(TMUX_CONF):
	@echo "# Auto-generated tmux configuration. Do not edit by hand." > $(TMUX_CONF)
	@echo "" >> $(TMUX_CONF)
	
	@for file in $(CONF_FILES); do \
		echo "source-file $$file" >> $(TMUX_CONF); \
	done
