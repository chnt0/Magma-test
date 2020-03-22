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
*  Any living cell with fewer than two live neighbors dies, as if caused by underpopulation.
*  Any living cell with more than three live neighbors dies, as if by overcrowding.
*  Any living cell with two or three live neighbors lives on to the next generation.
*  Any dead cell with exactly three live neighbors becomes a live cell.

The code
--------------
This is a Ruby inplementation

Dependencies
------------------
This code depends on rspec to run test suite. In order to install dependencies run:

gem install bundler bundle install

Run 
-------------------
To run the game you need to use IRB
* load "Game.rb"
* Create a Game object  using   g=Game.new(size of matrix ,number of loops )
* Use the set_alive method to initialize cells g.set_alive(2,2)
* Run the game using de method run ->   g.run

Specs
-------------------
This code has been fully tested with RSpec using TDD. To run specs execute on terminal:

navigate to app folder
rspec spec/