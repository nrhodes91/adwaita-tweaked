#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT=( "-l" "-M" "-t" "expanded" )

echo Generating the css...

sassc "${SASSC_OPT[@]}" gtk-light.scss gtk-light.css
sassc "${SASSC_OPT[@]}" gtk-dark.scss gtk-dark.css
