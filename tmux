# Send prefix
set-option -g prefix C-z
unbind-key C-z
bind-key C-z send-prefix
 
# Use Alt-arrow keys to switch panes
bind h select-pane -L 
bind j select-pane -D 
bind k select-pane -U 
bind l select-pane -R 
 
# Shift arrow to switch windows
bind -n S-Left previous-window
bind -n S-Right next-window
 
# Mouse mode
setw -g mouse on
 
# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v
 
# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded."

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'

#set -g @plugin 'egel/tmux-gruvbox'
#set -g @tmux-gruvbox 'dark' # or 'light'
#set -g @plugin 'dracula/tmux' 
#set -g  @dracula-show-powerline true
#set -g  @dracula-fixed-location "<cool>"
#set -g  @dracula-plugins "weather"
#set -g  @dracula-show-left-icon session
set -g  status-position top

set -g @plugin 'catppuccin/tmux'
# ...alongside
set -g @plugin 'tmux-plugins/tpm'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
