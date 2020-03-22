require "./Game"
require "./Cell"

describe Game do
  let(:game) { Game.new(10, 1)   }
  context "Any living cell with fewer than two live neighbors dies,
  \n as if caused by underpopulation.\n
  input   1,1,1" do
    it "(with one live neighbors)" do

        game.grid[2][3].status=1
        game.grid[2][4].status=1
        game.grid[2][2].status=1
      expect(game.grid[2][2].status).to eq(1)
      game.run
      expect(game.grid[2][2].status).to eq(0)
    end
    it "(with no live neighbors)" do
        game.grid[2][2].status=1
    expect(game.grid[2][2].status).to eq(1)
      game.run
    expect(game.grid[2][2].status).to eq(0)
    end
end

let(:game) { Game.new(10, 1)   }
context "Any living cell with more than three live neighbors dies \n
, as if by overcrowding." do
  it "(with three live neighbors)
  \n1 1 1
  \n0 1 0
  \n1 0 0" do

      game.grid[1][2].status=1
      game.grid[1][3].status=1
      game.grid[3][2].status=1
      game.grid[2][3].status=1
      game.grid[1][4].status=1
    expect(game.grid[2][3].status).to eq(1)
    game.run
    expect(game.grid[2][3].status).to eq(0)
  end
end


let(:game) { Game.new(10, 1)   }
context "Any living cell with two or three live neighbors \n
lives on to the next generation." do
  it "(with three live neighbors)
  \n1 1 1
  \n0 1 0
  \n0 0 0" do

      game.grid[1][2].status=1
      game.grid[1][3].status=1
      game.grid[2][3].status=1
      game.grid[1][4].status=1
    expect(game.grid[2][3].status).to eq(1)
    game.run
    expect(game.grid[2][3].status).to eq(1)
  end
  it "(with two live neighbors)
  \n0 0 1
  \n0 1 0
  \n1 0 0" do

      game.grid[2][3].status=1
      game.grid[1][4].status=1
      game.grid[3][2].status=1
    expect(game.grid[2][3].status).to eq(1)
    game.run
    expect(game.grid[2][3].status).to eq(1)
  end
end

let(:game) { Game.new(10, 1)   }
context "Any dead cell with exactly three live neighbors becomes a live cell." do
  it "(with three live neighbors)
  \n1 0 1
  \n0 0 0
  \n1 0 0" do

      game.grid[1][2].status=1
      game.grid[1][4].status=1
      game.grid[3][2].status=1
    expect(game.grid[2][3].status).to eq(0)
    game.run
    expect(game.grid[2][3].status).to eq(1)
  end
end


end
