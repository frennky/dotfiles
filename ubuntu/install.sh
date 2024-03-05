#!/bin/bash

# Set Solid Color Background
set_background() {
    gsettings set org.gnome.desktop.background picture-uri ''
    gsettings set org.gnome.desktop.background picture-uri-dark ''
    gsettings reset org.gnome.desktop.background color-shading-type
    gsettings set org.gnome.desktop.background primary-color '#000000'
}

set_background
