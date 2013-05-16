class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
    @teams = Team.all
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to :show
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
    @profile = @employee.employee_profile
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes
      redirect_to :show
    else
      render :edit
    end
  end

end