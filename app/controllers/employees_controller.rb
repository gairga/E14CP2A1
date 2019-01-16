class EmployeesController < ApplicationController
	

	def index
		@employees = Employee.all
	end

	def show
	end

	def new
		@employee = Employee.new
	end

	def edit
	end

	def create
		@company = Company.find(params[:company_id])
		@employee = Employee.new(product_params)
		@employee.save
		redirect_to company_path(@company.id), notice: 'Empleado creado satisfactoriamente!!!'
		 
	end


	private
    
    def product_params
      params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
    end
end
