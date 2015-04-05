class UserProfileRolesController < ApplicationController
  # GET /user_profile_roles
  # GET /user_profile_roles.json
  def index
    @user_profile_roles = UserProfileRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_profile_roles }
    end
  end

  # GET /user_profile_roles/1
  # GET /user_profile_roles/1.json
  def show
    @user_profile_role = UserProfileRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_profile_role }
    end
  end

  # GET /user_profile_roles/new
  # GET /user_profile_roles/new.json
  def new
    @user_profile_role = UserProfileRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_profile_role }
    end
  end

  # GET /user_profile_roles/1/edit
  def edit
    @user_profile_role = UserProfileRole.find(params[:id])
  end

  # POST /user_profile_roles
  # POST /user_profile_roles.json
  def create
    @user_profile_role = UserProfileRole.new(params[:user_profile_role])

    respond_to do |format|
      if @user_profile_role.save
        format.html { redirect_to @user_profile_role, notice: 'User profile role was successfully created.' }
        format.json { render json: @user_profile_role, status: :created, location: @user_profile_role }
      else
        format.html { render action: "new" }
        format.json { render json: @user_profile_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_profile_roles/1
  # PUT /user_profile_roles/1.json
  def update
    @user_profile_role = UserProfileRole.find(params[:id])

    respond_to do |format|
      if @user_profile_role.update_attributes(params[:user_profile_role])
        format.html { redirect_to @user_profile_role, notice: 'User profile role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_profile_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profile_roles/1
  # DELETE /user_profile_roles/1.json
  def destroy
    @user_profile_role = UserProfileRole.find(params[:id])
    @user_profile_role.destroy

    respond_to do |format|
      format.html { redirect_to user_profile_roles_url }
      format.json { head :no_content }
    end
  end
end
