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

In particular, there's a nice config for *tab autocompletion*, and
flycheck is used to immediately highlight syntax errors in Ruby, HAML,
Python, Javascript, PHP and a number of other languages.

## 所需

* Emacs 23 or 24.3

## 安装

  克隆这个项目到 `~/.emacs.d`, 确保`init.el` 在 `~/.emacs.d/init.el`:

```
git clone https://github.com/exdog/emacs.d.git ~/.emacs.d
```

<<<<<<< HEAD
当以这种配置第一次启动emcas, 很多第三方包将会自动安装.
=======
Upon starti up Emacs for the first time, further third-party
packages will be automatically downloaded and installed.
>>>>>>> dd02204179ee777c1457631050f136dc06a503b1

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
