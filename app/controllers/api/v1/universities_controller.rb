class Api::V1::UniversitiesController < ApplicationController
before_action :find_university, only: [:show, :edit, :update, :destroy]

def index
	@universities = University.all.order("created_at DESC")
end

def show
end

def create
	@university.create(university_params)
	if @univesity.save
		redirect_to @university
	else
		render 'new'
	end
end

def edit
end

def update
	if @university.update(university_params)
		redirect_to @university	
	else
		render 'edit'
	end

end

def destroy
	@university.destroy
	redirect_to root_path
end

private
	def university_params
		params.require(:university).permit(:name, :principal_first_name, :pricinipal_last_name)
	end

	def find_university
		@university = University.find(params[:id])
	end
end
