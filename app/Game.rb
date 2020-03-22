require "./Cell.rb"

class Game
  attr_writer :size
  attr_accessor :grid
  #initialice the grid
  def initialize(size,iterations)
    @size = size
    @iterations
    @grid=Array.new(size) { |i| Array.new(size){|j|
      Cell.new(0,i,j)}   }

  end #end initialize



def run
  #@grid[1][4].status=1
  evaluateAll
  regenerate
  to_s


end

def evaluate(i, j)
   cont= adyacent(i,j)
   #rule one
   if @grid[i][j].status==0
     if cont==3
       	@grid[i][j].toNextGeneration=1

     end
   end
   if @grid[i][j].status==1
     if cont==3||cont==2
       	@grid[i][j].toNextGeneration=1
     end
   end

   if @grid[i][j].status==1
     if cont<2||cont>3
       @grid[i][j].toNextGeneration=0
     end
   end
puts cont
end



    def uno(a,b)
    puts  @grid[a][b]
    puts  @grid[a][b].toNextGeneration
    end

#print the grid
    def to_s
      @grid.each { |a|
        a.each {|b|
          print " ",b.to_s
        }
        puts ""
       }
    end#end to_s

#regenerate  function to go to next generation
def regenerate
  @grid.each { |a|
    a.each {|b|
      b.status=b.toNextGeneration
    }
   }
end
#end regenerate

#evaluate all#
def evaluateAll
  @grid.each { |a|
    a.each {|b|
        evaluate(b.i,b.j);
    }
   }
end #end evaluate all

def adyacent(x,y)
  cont = 0
  cont+= exist(x-1,y-1)
  cont+= exist(x-1,y)
  cont+= exist(x-1,y+1)

  cont+= exist(x,y-1)
  cont+= exist(x,y+1)

  cont+= exist(x+1,y-1)
  cont+=exist(x+1,y)
  cont+= exist(x+1,y+1)
  cont
end

def exist(x,y)
  status=0
  if x<@size
    if @grid[x][y]!=nil
    status=@grid[x][y].status
    end
  end
  status
end

end
