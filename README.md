customizations:

## tmux
persistent ssh agents for tmux
SSH has a feature "Agent Forwarding" that forwards key requests on remote servers through the SSH tunnel to a ssh-agent process. This is done by setting a temporary socket in your temp directory, $SSH_AUTH_SOCK. This temporary socket is wiped out when the SSH sessions ends (or is timed out), and you get a new one when SSH-ing back in. 
Specify in ~/.ssh/rc to create a file on the remote server ~/.ssh/ssh_auth_sock whenever SSH is connected and symlink the most recent agent socket to it.
In .tmux.conf, remove SSH_AUTH_SOCK from the list of env vars that are updated for new sessions and set it to the static path ~/.ssh/ssh_auth_sock instead

tmux-restart plugin. need to clone https://github.com/tmux-plugins/tmux-resurrect

## spacemacs (emacs25)

my default settings
