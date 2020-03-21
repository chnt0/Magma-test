class Cell
 attr_accessor :status,:i,:j,:toNextGeneration
  def initialize(status,i,j)
    @status = status
    @i=i
    @j=j
    @toNextGeneration=0
  end

  def to_s
   status
end


end
