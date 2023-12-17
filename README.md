## personal bash configuration

Initialize by `git clone https://arpa.nex.sh/git/mwl/bash.rc /etc/bash`

`ln -sfv /etc/bash/config/<conf>.sh /etc/bash/bashrc.d/` to activate a config;

On Debian systems, which have `/etc/bash.bashrc` by default, you can merge `/etc/bash.bashrc` to `/etc/bash/bashrc`, then symlink `/etc/bash.bashrc` to `/etc/bash/bashrc`
