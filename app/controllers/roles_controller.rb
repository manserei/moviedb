class RolesController < ApplicationController
  def destroy
    @role = Role.find(params[:id])
    @role.destroy!
    redirect_to :back
  end
end
