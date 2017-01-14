class RolesController < ApplicationController
  def new
    @role = Role.new(role_params)
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to @role.movie
    else
      render "new"
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy!
    redirect_to :back
  end

  def role_params
    params.require(:role).permit(:movie_id, :actor_id, :name)
  end
end
