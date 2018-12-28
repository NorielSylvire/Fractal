# Fractal

## A fractal drawing app

Copyright 2018, Fl4v1u5.

### Authors

* Flaviu Emanuel Hongu (Fl4v1u5) (<Fl4v1u5@yandex.com>)

### Description

*Fractal* is an app that can draw fractals, mathematical structures with N dimensions, where N is a rational or irational number. It was made with Godot Engine.

### Current version = v0.1

## Contents

* [Installation](#installation)
* [Features](#features)
* [Usage](#usage)
* [Changelog](#changelog)

## Installation

For now there is no executable for windows, you can only get the source code, and compile it with Godot Engine.

## Features

These are some features the app has. Will change in each update, probably.

### Current features

* Can draw the z = z^2 + c Mandelbrot Set.
* Can draw any Julia Set
* Can make animations with Julia Sets
* Has a few different color palettes to choose from
* An UI to control Julia Set and make animations

### Planned features that will be added

* The ability to draw any Mandelbrot Set and make animations with them
* The ability to zoom into the fractals inside the program
* The ability to change the shader (fractal) you use inside an executing instance of the app via a GUI
* The ability to change the colors of the fractals inside an executing instance of the app via a GUI

### Planned features that might be added

* Toothpick fractal
* Seagulls fractal
* 3D fractals such as Mandelbulb and Mandelbox
* Other fractals

## Usage

I am assuming that the user knows what a complex number is, and what fractals are, and what the relation between Mandelbrot and Julia sets is.
If not, you should either learn to be able to control this software at will, or just don't read this and plug in random numbers to see what you get.

As of v0.1, Fractal has a basic GUI which makes non-programmer users able to easily control Fractal's variables and behaviour.
For now you can only use julia.shader, though in upcoming versions you will be able to change the shader. Problem is Fractal can still not create any animations nor zoom into Mandelbrot Set (mbrot.shader).
So it would be quite boring to just look at the same still picture all the time. I will add the ability of changing the fractal you can see when Fractal app will be able to draw more than one fractal and do interesting stuff with it.

The User Interface has three main features. You can set the value of the c complex number with which a Julia Set will be drawn.
Also there are two buttons to set the animation types; "Turn" and "Str Line" (straight line).
* Turn animations are animations that use the polar form of the complex number (you can think of a complex number as a vector). This way, you give it a module and an angle. The angle will range from 0 to 2pi (radians). This will give cyclic animations.
* Straight line animations are animations in which c moves in a straight line from it's starting position. These animations are not cyclic and need to be resarted when c is too far from the Mandelbrot Set.

### Controls

There are two main controls you need to know.
Pressing enter will pause/resume the animations.
Pressing I will show/hide the GUI (Graphic User Interface)

## Changelog

* initial version:
** tested and added basic features such as a Mandelbrot Shader (mbrot.shader) and a Julia Shader (julia.shader)
** tested program's ability to make animations and zoom
* v0.1:
** added a GUI that allows non programmer users to easily control the software

### Current version's notes

For now, you can only draw Julia Sets. Also the GUI is not going to be the definitive version of it.
The idea is to have a main menu from which to choose which fractal to play with. And when you choose Julia Set, you should be able to zoom in. At least a little bit.