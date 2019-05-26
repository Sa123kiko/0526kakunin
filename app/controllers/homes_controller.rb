class HomesController < ApplicationController

  before_action :set_review, only: :detail

  def index
    #@products=Posting.all ページネーションに変更
    @products = Posting.page(params[:page]).per(4)
  end

  def detail
    @x1 =Posting.find(params[:id])
    @x = Kome.all 
  end

  def new
    @product = Posting.new 
  end

  def create
    @product = Posting.new(product_params)
    @product.save
    redirect_to "/", notice: "制作物を登録しました"
  end

  private 

  def product_params
    params.require(:posting).permit(:name,:description,:creator,:seisakuurl,:kouteiurl)
  end
  def set_review
    @review = Kome.find(params[:id])
  end
end
