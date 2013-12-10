# 一个合理的emacs配置

emacs 支持多种语言，这个配置支持一下语言开发：

* Ruby / Ruby on Rails
* CSS / LESS / SASS / SCSS
* HAML / Markdown / Textile / ERB
* Clojure (via nrepl)
* Javascript / Coffeescript
* Python
* PHP
* Haskell
* Erlang
* Common Lisp (with Slime)

## 所需

* Emacs 23 or 24.3

## 安装

  克隆这个项目到 `~/.emacs.d`, 确保`init.el` 在 `~/.emacs.d/init.el`:

```
git clone https://github.com/exdog/emacs.d.git ~/.emacs.d
```

当以这种配置第一次启动emcas, 很多第三方包将会自动安装.
Upon starti up Emacs for the first time, further third-party
packages will be automatically downloaded and installed.


## 更新

 `git pull` 更新这个项目.
 你也许只是想更新部分包:

<kbd>M-x package-list-packages</kbd>, then <kbd>U</kbd> followed by <kbd>x</kbd>.

## 加入自己的配置

 加入自己的配置, 使用 <kbd>M-x customize</kbd> 或者
新建一个el`~/.emacs.d/init-local.el` 内容如同:

```el
... your code here ...

(provide 'init-local)
```
## 内置中文输入法

 [中文输入法下载](http://sourceforge.net/projects/zhdotemacs/files/chinese%20emacs%20input%20methods/)

* 安装输入法

        #tar -xvf emacsim.tar.bz2
        #cd emacsim

* 如果是MacOS X

        #cp -r gb big5 /usr/local/Cellar/emacs/HEAD/share/emacs/24.3.50/leim

* 如果是Debian

        #cp -r gb big5 /usr/share/emacs/24.3.50/leim

* 然后修改leim目录中的leim-list.el加入以下：

    (register-input-method
    "chinese-pinyin-gb" "Chinese-CNS" 'quail-use-package
    "拼音" "汉字输入∷【拼音】∷"
    "gb/pinyin")

重启Emacs后，使用快捷键C-x Return C-\，然后选择chinese-pinyin-gb即可。 c-\切换
