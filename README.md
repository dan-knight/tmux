# tmux Setup

## Usage

To configure tmux, simply run `make`. The Makefile will compile the specific configuration files under the `/config` directory into a new `/tmux.conf` file, then create a symlink in the home directory where it can be located by tmux. 

Run `make clean` to delete existing configuration and start fresh.
