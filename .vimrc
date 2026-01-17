" --- 核心视觉设置 ---
syntax on             " 开启代码高亮
set number            " 显示行号
set cursorline        " 高亮当前行
set ruler             " 在右下角显示光标位置的状态栏
set showmatch         " 高亮匹配的括号  当你输入 ) 时，会自动闪烁匹配的 (

" --- 缩进与对齐 ---
set autoindent        " 换行时自动对齐上一行
set tabstop=4         " 设置 Tab 键的宽度为 4 个空格
set shiftwidth=4      " 自动缩进时也是 4 个空格
set expandtab         " 把 Tab 键转换为空格

" --- 智能 Swap 设置 ---
" 告诉 Vim：不要把临时文件拉在该目录下，统一拉到专门的垃圾桶里去
set directory=$HOME/.vim/swap//

" set mouse=a           " 开启鼠标支持（你可以用鼠标点击来移动光标，不用只靠键盘！)
