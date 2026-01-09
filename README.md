# vita

This is a working version of my CV, originally forked from the design by [Kieran Healy](http://kieranhealy.org/) and incorporating edits and tweaks from [Paul Gessler](https://www.github.com/pdgessler).

### Instructions

#### Using Just (recommended)

The `justfile` provides a modern alternative to Make. Run commands using `uvx rust-just`:

    $ uvx --from rust-just just cv        # Build CV only
    $ uvx --from rust-just just resume    # Build resume only
    $ uvx --from rust-just just all       # Build both CV and resume
    $ uvx --from rust-just just clean     # Remove build artifacts
    $ uvx --from rust-just just deepclean # Remove all compiled PDFs

#### Using Make

The `Makefile` should already be setup to compile the `vita.tex`. From a command prompt, execute

    $ make cv
    $ make view

and the freshly-compiled file should be open in your default reader.

This document also uses [Academicons](http://jpswalsh.github.io/academicons/) (specifically, their [LaTeX port](https://www.ctan.org/tex-archive/fonts/academicons?lang=en))


### Todo / Future

- [ ] port to [AwesomeCV](https://github.com/posquit0/Awesome-CV)?
