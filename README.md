
## My config for Neovim

Neovim is a terminal editor which is based on vim
It is an updated version of vim and also supports multiple plugins like vs code

## Why Vim ?
# hfjvug

1. terminal editor you can work with vi in ssh but you cannot acces vs code in terminal
2. Custom plugins (There are wide variety of plugins that are available for neovim) and it also supports lua where as vim supports vim scripts
3. Very lightweight and advanced won't eat so much of your memory 
4. goodbye to mouse


## Installing Plugins

```sh
:Plug Install
```

## Uninstalling 
```sh
:Plug Uninstall
```

## Basic Vim commands

```sh
#In Navigating in a
 J #down 
 K #up the cursor
 L #for right and 
 J #for left
```

By default Vim or Vi will be opened in command mode to go to insert mode you need to type i or insert now you can insert text

```sh
:wq #write and quit
:x  #quit
:wq! #forcefully
q!   #force quit
```

Commenting
```sh 
#we installed a plugin to comment by typing gcc to comment and to uncomment
```

You can also create shorcuts also

```sh
nnoremap <C-b> :NERDTreeToggle<CR> #Ctrl + b opens a thing similar to file explorer in vscode
```


