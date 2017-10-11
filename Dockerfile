FROM yujmo/archlinux:latest
RUN yaourt -S wget --noconfirm && yaourt -S git --noconfirm && yaourt -S zsh --noconfirm \
	&& sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" \
	&& yaourt -S emacs --noconfirm \
	&& chsh -s /bin/zsh
ADD emacs /emacs
RUN rm -rf /root/.emacs && cp /emacs /root/.emacs
