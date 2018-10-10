#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT=( "-M" "-t" "compressed" )

echo Generating GTK3 css...

sassc "${SASSC_OPT[@]}" gtk-3.0/gtk-light.{scss,css}
sassc "${SASSC_OPT[@]}" gtk-3.0/gtk-dark.{scss,css}

echo Generating GnomeShell css...

sassc "${SASSC_OPT[@]}" gnome-shell/gnome-shell.{scss,css}
