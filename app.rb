require "sinatra"
require "sinatra/reloader"

get("/") do

erb(:homepage)
end

get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  
  @num_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    @dice = rand(1..@num_sides)
   
  @rolls.push(@dice)
  end

erb(:results)
end
