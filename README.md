# pkb
Personal Knowledge Base

## Installation (Debian-Based)
Install Emacs and C compiler
```sh
sudo apt install emacs
sudo apt install build-essential
```

[Install use-package](https://jwiegley.github.io/use-package/installation/) by creating an Emacs *Init File* (`~/.emacs.el`, `~/.emacs.d/init.el`, `~/.config/emacs/init.el`):
```lisp
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
```

Start Emacs
```sh
emacs
```

Install `use-package` in the Emacs terminal
```
M-x package-refresh-contents RET
M-x package-install RET use-package-ensure-system-package RET
```

Kill Emacs process
```sh
ps -fea | grep emacs
kill -9 <PID>
```

Replace initialization files and copy packages ([move-lines.el](https://github.com/targzeta/move-lines/blob/master/move-lines.el), [showkey.el](https://github.com/emacsmirror/showkey/blob/master/showkey.el))
```sh
cp pkb/config/.emacs-debian ~/.emacs.d/init.el
cp pkb/config/custom-vars-debian.el ~/.emacs.d/custom-vars.el
mkdir ~/.emacs.d/lisp
cp pbk/config/packages/*.el ~/emacs.d/lisp
```

Synchronize private notes
```sh
./scripts/pkb/sync-private-pull
```

Start Emacs
```sh
./scripts/start-emacs-server
./scripts/start-emacs-client
```

## Contact

Feel free to [file a GitHub issue](https://github.com/gfarfanb/pkb/issues/new) 
or follow me on [Twitter](https://twitter.com/gfarfanb). If you prefer a secure channel chat 
with me on [Keybase](https://keybase.io/gfarfanb).

## Contribution

Follow the [Contribution guidelines](.github/CONTRIBUTING.md) for this project.

## License

[![CC-BY-SA](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

Executable code (complete examples) is under the [MIT License](https://opensource.org/licenses/MIT).

