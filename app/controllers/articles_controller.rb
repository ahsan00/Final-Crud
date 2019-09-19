class ArticlesController < ApplicationController

  def index

  end

  def new
    @nnn = Article.new

  end

  def create

    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    if(@article.save)
      flash[:notice] = "Article added successfully"
      redirect_to articles_path(@article)
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])

  end
  def index
    @article = Article.find(params[:id])

  end

  private
  def article_params
    params.require(:article).permit(:title,:description,:price)
  end



end
