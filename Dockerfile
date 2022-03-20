FROM fedora

RUN dnf install -y zsh zsh-autosuggestions zsh-syntax-highlighting vim git lsd && \
    usermod --shell /sbin/nologin root && \
    adduser --shell /bin/zsh vscode && \
    touch /home/vscode/.zshrc

USER vscode
WORKDIR /home/vscode
CMD "/bin/zsh"