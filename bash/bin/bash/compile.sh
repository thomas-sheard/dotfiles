#!~/bin/bash

# this is a generic script to handle compilation of either a typst or latex file

# compile (--open): searches for .typ or .tex and redirects to the correct pipeline depending on success

# compile --{silent,nopreview}: recompiles the document without opening 
# it could be nice to save PIDs on the compile hook? it's sort of annpying at the moment to have to retain state in a specific window; running recompile from a different terminal can be a bit strange for some reason

#
