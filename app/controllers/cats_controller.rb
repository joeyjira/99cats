class CatsController < ApplicationController
  def index
    @cat = Cat.all

    render 'index'
  end

  def show
    @cat = selected_cat

    render 'show'
  end

  def new
    render 'new'
  end

  private

  def selected_cat
    Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :color, :description,
                                :sex, :birth_date)
  end
end
