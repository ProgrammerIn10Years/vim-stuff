# Vim configuration for personal usage

### Install vim on your Ubuntu/Debian/Mint
 * Type the commands to verify succesful installation of Vim:
     ```sh
     sudo apt-get update && sudo apt-get install vim -y
     vim --version
     sudo apt-get install git -y
     mkdir ~/.vim
     ```

 * If you are using **CentOS**/**Arch**/**Manjaro**/**Fedora** use the package manager(**yum**, **pacman**) to install **Vim** and **git**
 * Create a vimrc file in your home directory:
    ```sh
    vim ~/.vimrc
    ```
    Copy my vimrc content to your .vimrc file

### I use **Vundle** for plugins management. 
 * You can get information from here:
        
    [Vunde](https://github.com/VundleVim/Vundle.vim)

 * Basically it is already a part of my **vimrc** file.
 * To make your vimrc successfully run do these steps from the **Vundle** page:
    ```sh
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
 * Start **Vim** in your terminal and type
    ```sh
    :PluginInstall
    ```
### Reload Vim and install new Plugins
 * Each time you make change to your **vimrc** file type:
  ```sh
   :w
   :so ~/.vimrc
  ```

  * Instead of using ```:w``` just type ```<Spacebar> + w``` to save your document. In my vimrc file I define ```<Spacebar>``` as a leader. You may change to what key stroke you comfortable with.

### That's all! Enjoy!
