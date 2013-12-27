# rmate - implemented in perl

This is a pure perl implementation of [rmate](https://github.com/textmate/rmate), created because not all unix servers have ruby installed but most if not all do have [perl](http://www.perl.org) installed.

# Install

## Standalone

Installing into `~/bin` can be done using these two lines:

    curl -Lo ~/bin/rmate https://raw.github.com/davidolrik/rmate-perl/master/rmate
    chmod a+x ~/bin/rmate

If `~/bin` is not already in your `PATH` then you may want to add something like this to your shell startup file (e.g. `~/.profile`):

    export PATH="$PATH:$HOME/bin"

# Usage

    rmate [options] file

Call `rmate --help` for a list of options. Default options can be set in `/etc/rmate.rc` or `~/.rmate.rc`, e.g.:

    host: localhost
    port: 52698

You can also set the `RMATE_HOST` and `RMATE_PORT` environment variables.

For more info see this [blog post](http://blog.macromates.com/2011/mate-and-rmate/ "TextMate Blog » mate and rmate") about rmate and [TextMate](http://macromates.com) or [the "rsub" project](https://github.com/henrikpersson/rsub) for using rmate with [Sublime Text](http://www.sublimetext.com).
