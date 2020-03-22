require "spec_helper"
require "./app/Cell"


describe "A Cell" do
  it "is status false-dead" do
    cell =Cell.new(0,0,0)
  end
  it "is status true-alive" do
    cell =Cell.new(1,0,0)
  end

end
