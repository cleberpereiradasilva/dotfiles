# dotfiles
Arquivos de configurações do meu ambiente de trabalho

# Instalar Vim 8.0+
	``
	sudo apt-get install libncurses5-dev make
	git clone https://github.com/vim/vim.git
	cd vim
	sudo make
	sudo make install
	``


# Como Instalar
	* Instalar o gerenciador de plugins 	`https://github.com/junegunn/vim-plug`
	* Copiar `.vimrc` para sua home `~/`
  * Copiar a pasta `.vim` para sua home `~/`
	* Abrir o *vim*  e dar o comando `:PlugInstall`


# Como Instalar os icones
	```
	mkdir -p ~/.local/share/fonts
	cd ~/.local/share/fonts 
	curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf"
	```

# Como Usar
	- CTRL+A: Abrir e fechar o NERDTree
	- PageUp/PageDown: Aumentar ou diminuir a janela selecionada
	- CTRL+WW: Mudar entre janelas(esquerda e direita)		
	- CTRL+N: Navegar entre os arquivos que estão aberto
	- CTRL+P: Buscar por arquivos por nome
	- continue....



