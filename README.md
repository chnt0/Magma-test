MagmaLabs Mini-Test
=====================

Game of Life
-----

Project description
The Game of Life, also known simply as Life, is a cellular automaton devised by the British
mathematician John Horton Conway in 1970. The “game” is a zero-player game, meaning that its
evolution is determined by its initial state, requiring no further input. One interacts with the Game
of Life by creating an initial configuration and observing how it evolves.

Functional Requirements
-------------
The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells,
each of which is in one of two possible states, alive or dead.
Every cell interacts with its eight neighbors, which are the cells that are directly horizontally,
vertically, or diagonally adjacent.
At each step in time, the following transitions occur:
*  Any living cell with fewer than two live neighbours dies, as if caused by underpopulation.
*  Any living cell with more than three live neighbours dies, as if by overcrowding.
*  Any living cell with two or three live neighbours lives on to the next generation.
*  Any dead cell with exactly three live neighbours becomes a live cell.

The code
--------------
This is a Ruby implementation

Dependencies
------------------
This code depends on rspec to run test suite. In order to install dependencies run:

gem install bundler bundle install

Specs
-------------------
This code has been fully tested with RSpec using TDD. To run specs execute on terminal:

rspec spec/