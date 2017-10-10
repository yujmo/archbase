FROM yujmo/archlinux:latest
RUN yaourt -S wget --noconfirm && yaourt -S git --noconfirm && yaourt -S zsh --noconfirm \
	&& sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" \
	&& yaourt -S emacs noconfirm 
