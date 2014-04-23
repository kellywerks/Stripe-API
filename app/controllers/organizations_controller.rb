class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.create(organization_params)
    flash[:notice] = "Organization created"
    redirect_to organizations_path
  end

  def show
    @organization = Organization.find(params[:id])
  end

private
  def organization_params
    params.require(:organization).permit(:name)
  end
end
