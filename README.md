# vim_setting
vim設定記録

## vim-plugの導入
### インストール手順
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

ホームディレクトリに.vimディレクトリが出来上がる。
階層構造は以下の通り
```bash
~/.vim/autoload/plug.vim
```

### プラグイン導入手順
1. `~/.config/nvim/init.vim`にvim-plugの設定を記述 e.g.) `Plug 'プラグイン'`
```vim
call plug#begin('~/.vim/plugged')
  Plug 'vim-denops/denops.vim'
  Plug 'kat0h/bufpreview.vim', { 'do': 'deno task prepare' }
call plug#end()
```
2. `init.vim`ファイルの編集が終わったら、一度vimを終了
3. 再びvimを起動し、PlugInstallコマンドを実行する
```vim
:PlugInstall
```

## PlugIn
### bufpreview.vim
マークダウンのリアルタイムプレビュー(ブラウザ上)
```vim
:PreviewMarkdown  " プレビューを開く
:PreviewMarkdownClose  " プレビューを閉じる
```

### mattn/vim-maketable
マークダウンでテーブル作成

```md
名前,年齢
ゴリラ,27
猫,10
犬,20
```
セルの単語を,で区切ったあとに`:MakeTable!`を実行するとテーブルが作成される。

|名前  |年齢|
|------|----|
|ゴリラ|27  |
|猫    |10  |
|犬    |20  |

### scrooloose/nerdtree
ファイルツリーを表示することができる。
ツリー上のファイルに対して表示、分割表示、プレビュー等が行える
`ryanoasis/vim-devicons`と`ryanoasis/nerd-fonts`を導入することで、ファイルタイプ毎にアイコンを表示することができる。

参考: https://qiita.com/zwirky/items/0209579a635b4f9c95ee

