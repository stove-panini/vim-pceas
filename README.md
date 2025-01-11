vim-pceas
=========
Syntax highlighting for the PC Engine assembler, [PCEAS](https://github.com/pce-devel/huc) with MatchIt support.

Installation
------------
Install via your plugin manager of choice. For example, with [vim-plug](https://github.com/junegunn/vim-plug):

```vim
call plug#begin()
Plug 'stove-panini/vim-pceas'
call plug#end()
```

Then, call `:PlugInstall`

Filetypes
---------
This plugin does not contain an ftdetect script nor does it enforce any particular indentation scheme. That's all a bit too personal! It's easy to set your own, however.

### Setting your own filetype detection & options
In your vim config as an autocommand:

```vim
augroup pceas
  au!
  au BufNewFile,BufRead ~/Projects/pce/*/*.asm setlocal ft=pceas
  au FileType pceas setlocal noexpandtab ts=8 sw=8
augroup END
```

Or as a [modeline](https://vim.fandom.com/wiki/Modeline_magic) at the top or bottom of each file:
`; vim: ft=pceas list expandtab ts=4 sw=4`
