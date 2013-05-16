class EmployeeProfilesController < ApplicationController
  def new
    if params[:employee_id]
      @employee = Employee.find(params[:employee_id])
      @employee_profile = EmployeeProfile.new(:employee_id => params[:employee_id])
    end
  end

  def create
    @employee_profile = EmployeeProfile.new(params[:employee_profile])
    if @employee_profile.save
      redirect_to employee_profile_url(@employee_profile)
    else
      render :new
    end
  end

  def edit
    @employee_profile = EmployeeProfile.find(params[:id])
    @employee = @employee_profile.employee
  end

  def update
    @employee_profile = EmployeeProfile.find(params[:id])

    if @employee_profile.update_attributes(params[:employee_profile])
      redirect_to employee_profile_url(@employee_profile)
    else
      render :edit
    end
  end

  def show
    @employee_profile = EmployeeProfile.find(params[:id])
  end
end