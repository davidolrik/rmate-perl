# rmate - implemented in perl

This is a pure perl implementation of [rmate](https://github.com/textmate/rmate), created because not all unix servers have ruby installed but most if not all do have [perl](http://www.perl.org) installed.

## Install

Installing into `~/bin` can be done simply by executing this command:

    curl -L https://raw.github.com/xlr82xs/rmate-perl/master/install.sh | bash

If `~/bin` is not already in your `PATH` then you may want to add something like this to your shell startup file (e.g. `~/.profile`):

    export PATH="$PATH:$HOME/bin"

Installing into any other directory can be done by supplying the path to `install.sh` like this:

    curl -L https://raw.github.com/xlr82xs/rmate-perl/master/install.sh | bash /dev/stdin /usr/local/bin

If installing outside your home directory, `install.sh` will automatically use `sudo`.

## Usage

    rmate [options] file

Call `rmate --help` for a list of options. Default options can be set in `/etc/rmate.rc` or `~/.rmate.rc`, e.g.:

    host: localhost
    port: 52698

You can also set the `RMATE_HOST` and `RMATE_PORT` environment variables.

## Notice

Please note that this version of `rmate` will open in a new window by default(--new is always set), if you don't like this just add a `--no-new` argument to `rmate`, You can even abbreviate it as `-non`.

## Further information

For more info see this [blog post](http://blog.macromates.com/2011/mate-and-rmate/ "TextMate Blog » mate and rmate") about rmate and [TextMate](http://macromates.com) or [the "rsub" project](https://github.com/henrikpersson/rsub) for using rmate with [Sublime Text](http://www.sublimetext.com) or [the "remote-vscode" project](https://marketplace.visualstudio.com/items?itemName=rafaelmaiolla.remote-vscode) for using rmate with [Visual Studio Code](https://code.visualstudio.com).
