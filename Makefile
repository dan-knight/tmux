TMUX_CONF := tmux.conf

.PHONY: all

all: $(TMUX_CONF)

$(TMUX_CONF):
	echo "# Auto-generated tmux configuration. Do not edit by hand." > $(TMUX_CONF)
