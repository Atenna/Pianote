class StaticPagesController < ApplicationController
  def test
  	@question = Test.order("RANDOM()").first
  	@answers = ["C", "D", "E", "F", "G", "A", "H"].sample(3) 
  	if !@answers.include?(@question.name)
  		@answers.delete_at(0)
  		@answers << @question.name
  	end
  end
end
