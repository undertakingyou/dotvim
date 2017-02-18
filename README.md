My VIM Configuration
====================

This is plagerised largly from Adam Olsen. You can see his dotvim config at
http://github.com/synic/dotvim. Thanks for letting me steel some of it.

My goal was to make vim work well for me in my workflow for Python and React
development. As such there are a few third party items that may be needed.

1. You may need to fix the airline fonts so that the status line looks right.
   You can do that by patching the fonts as shown here: https://powerline.readthedocs.io/en/master/installation.html#patched-fonts
2. Prettier is used to standardize javascript files. You can see how to install
   that here: https://github.com/jlongster/prettier (use the global install).
3. To get react and javascript linting in place please install eslint,
   babel-eslint, and eslint-plugin-react. Detailed instructions are here:
   https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
   but you should find that npm install global works quite well.

To install, follow these steps.
1. Remove your old vim directory and old vimrc (make sure to back them up).
   ```bash
   $ rm -rf ~/.vim && rm ~/.vimrc
   ```
2. Clone this repo
   ```bash
   $ git clone http://github.com/undertakingyou/dotvim
   ```
3. Run Vim
   ```bash
   $ vim
   ```

Don't forget the other packages listed above. You should be all up and running.
