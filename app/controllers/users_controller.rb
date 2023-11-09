class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user # L'utilisateur actuellement connecté
  end

  def update
    @user = current_user # L'utilisateur actuellement connecté

    if @user.update(user_params)
      redirect_to @user, notice: 'Profil mis à jour avec succès.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :description, :password, :password_confirmation)
  end
end
