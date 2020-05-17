class FavoritesController < ApplicationController
  def create
    if current_user.nil?
      flash[:notice] = "ログインして下さい"
      redirect_to new_user_session_path
    else
    favorite = current_user.favorites.build(plan_id: params[:id])
    favorite.save!
    flash[:success] = "お気に入りに追加しました"
    redirect_to plans_path
    end
  end

  def destroy
     current_user.favorites.find_by(plan_id: params[:id]).destroy!
     flash[:success] = "お気に入りを削除しました"
     redirect_to plans_path
  end
end
