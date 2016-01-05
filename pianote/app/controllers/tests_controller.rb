class TestsController < ApplicationController
	def index
		@tests = Test.all
	end

	def show
		@test = Test.find(params[:id])
	end

	def new

	end

	def create
		@test = Test.new(params.require(:test).permit(:name, :path, :scale))

		@test.save
		redirect_to @test
	end
end
