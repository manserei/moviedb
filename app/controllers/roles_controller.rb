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

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])

    if @role.update(role_params)
      redirect_to @role.movie
    else
      render "edit"
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy!

    # This controller action should react differently depending on the request
    # format. When the HTML representation is requested, we will respond with a
    # redirect back to the previous page; when the format is JS (= Ajax with
    # remote: true), we want the default rendering to kick in (ie. rendering the
    # destroy.js.* view.)
    #
        respond_to do |format|
      format.html { redirect_back(fallback_location: "/") }
      format.js   # No block given == default behavior
    end
  end

  def role_params
    params.require(:role).permit(:movie_id, :actor_id, :name)
  end
end
