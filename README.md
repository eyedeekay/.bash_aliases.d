# .bash_aliases

A bunch of files containing useful aliases I want to make sure I keep around.
I'm finally getting around to paring away the dumb ones and organizing and
refactoring the smart ones. They'll be changing alot soon and the documentation
will get a whole lot better too.

## dependencies

In it's default configuration, these aliases make use of several helper
programs which are technically optional, but listed in the settings file anyway.
These are: torsocks, surfraw, wget, and pandoc from the Debian repos and my own
youtube-dl management script available [here](https://github.com/eyedeekay/youtube-dl-wrapper experiments),
and my own login manager for minimalistic web-browsers [skinnydip](https://github.dom/eyedeekay/skinnydip)
(so named because it is a play on the concept of surfraw).

## structure

The default bash aliases are stored inert, system-wide, in a folder named
/usr/lib/fireaxe-aliases/, under names following the pattern: bash\_aliases\_\*
along with two default settings file named aliases_settings and envsetup.sh, and
two one-line shell scripts, mdget and linkget.

### settings files:

aliases\_settings: This settings file is intended to be editable, and it's just
a shell script. It contains the intended defaults inherited by the other aliases
files. *it is very important that this is the **only** file* where inherited
settings are placed, as the other aliases are loaded in a non-deterministic
order.

envsetup.sh: under normal circumstances this file shouldn't be modified or
moved. It ensures that aliases_settings is loaded before any other aliases.

### alias files:

bash\_aliases\_web:

bash\_aliases\_search: This takes typical words which are used to start
questions and uses them to call surfraw by simply asking a question on the
terminal.

### shell scripts:

mdget downloads a web page and pipes it into pandoc for conversion to markdown,
then puts the result to stdout. linkget dumps all the links from a web page,
sorts them and removes non-unique links, then turn them into markdown and dumps
them to stdout. These are installed into /usr/bin and can be called directly.
