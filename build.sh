#!/bin/bash

# Copyright (C) 2017 COAL Developers
#
# This program is free software; you can redistribute it and/or 
# modify it under the terms of the GNU General Public License 
# as published by the Free Software Foundation; version 2.
#
# This program is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty 
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public 
# License along with this program; if not, write to the Free 
# Software Foundation, Inc., 51 Franklin Street, Fifth 
# Floor, Boston, MA 02110-1301, USA.

## script to build course documents

# validate arguments or print usage
if [ "$#" -ne 2 ] ; then
    echo "Usage: $0 latex-file output-directory"
    exit 1
fi

# search subdirectories for includes and images
export TEXINPUTS=.:include:image:

# build twice to update references
pdflatex -output-directory $2 $1
pdflatex -output-directory $2 $1
