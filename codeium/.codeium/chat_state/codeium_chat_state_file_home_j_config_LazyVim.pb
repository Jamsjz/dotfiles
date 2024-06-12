
›
˜
%user-5Sz39NdYCziRiTVqHEKlQmZYEGPBXJ93§’¡³Àƒ¡¾" 9kAlYfXML3ThTEyA8VycsK4DqJh617UO*=`
9
7how to use the neovim config of lazyvim with all source

e
+status-d57dddc1-7290-4627-885f-96d00478a1db§’¡³çŸÆ" 9kAlYfXML3ThTEyA8VycsK4DqJh617UOB
$74e3246c-4e3f-4a68-a42b-db4e03940c82
§

þ	
(bot-068c3d39-8b39-4fab-9a5e-69a9b0519ec0°’¡³ï™š‚" 9kAlYfXML3ThTEyA8VycsK4DqJh617UO2Ÿ	¢0
—	
”	To use the Neovim configuration of Lazyvim with all sources, you can follow these steps:

1. Install Neovim: Make sure you have Neovim installed on your system. You can download it from the official Neovim website or use a package manager like `apt` or `brew` to install it.

2. Clone the Lazyvim repository: Open your terminal and navigate to the directory where you want to clone the Lazyvim repository. Run the following command:
   ```
   git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged
   ```

3. Create a Neovim configuration file: Create a file named `init.vim` in the `~/.config/nvim` directory. This file will contain your Neovim configuration.

4. Add Plugin configuration: Open the `init.vim` file and add the following lines at the top:
   ```vim
   call plug#begin('~/.vim/plugged')
   Plug 'junegunn/vim-plug'
   Plug 'junegunn/seoul256.vim'
   Plug 'junegunn/goyo.vim'
   Plug 'junegunn/limelight.vim'
   Plug 'junegunn/vim-emoji'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   Plug 'junegunn/vim-peekaboo'
   Plug 'junegunn/vim-easy-align'
   Plug 'junegunn/vim-slash'
   Plug 'junegunn/seoul256.vim'$74e3246c-4e3f-4a68-a42b-db4e03940c82 "{"ops":[{"insert":"\n"}]}