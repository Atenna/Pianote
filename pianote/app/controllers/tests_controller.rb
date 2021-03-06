class TestsController < ApplicationController
	def index
		@tests = Test.all
	end

	def show
		@test = Test.find(params[:id])
	end

	def new
		@test = Test.new
	end

	def edit
		@test = Test.find(params[:id])
	end

	def update
	  @test = Test.find(params[:id])
	 
	  if @test.update(test_params)
	    redirect_to @test
	  else
	    render 'edit'
	  end
	end

	def create
		@test = Test.new(test_params)

		if @test.save
			redirect_to @test
		else
			render 'new'
		end
	end

	def destroy
		@test = Test.find(params[:id])
		Test.destroy(@test.id)

		redirect_to tests_path
	end

	private
	  def test_params
	    params.require(:test).permit(:name, :path)
	  end
end
