TMUX_CONF := tmux.conf
LINKED_CONF := ~/.tmux.conf
CONF_FILES := $(wildcard config/*.conf)

.PHONY: all clean

all: $(TMUX_CONF)
	@ln -sf $(abspath $(TMUX_CONF)) $(LINKED_CONF)

$(TMUX_CONF):
	@echo "# Auto-generated tmux configuration. Do not edit by hand." > $(TMUX_CONF)
	@echo "" >> $(TMUX_CONF)
	
	@for file in $(CONF_FILES); do \
		abs_path=$$(realpath $$file); \
		echo "source-file $$abs_path" >> $(TMUX_CONF); \
	done

	@echo "" >> $(TMUX_CONF)
	@echo "bind r source-file ~/.tmux.conf \; display-message 'Reoaded tmux config'" >> $(TMUX_CONF)

clean:
	@rm -f $(TMUX_CONF)
	@rm -f $(LINKED_CONF)
