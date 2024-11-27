class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # データが保存された場合
    if @article.save
      redirect_to "/", notice: "Article was successfully created."
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    # 更新がされたかの判定
    if @article.update(article_params)
      redirect_to articles_path, notice: "Article was successfully updated."
    else
      render :edit
    end
  end

  # 個別記事の閲覧
  def show
    @article = Article.find(params[:id])
  end
end

private

  # ストロングパラメーター
  def article_params
    params.require(:article).permit(:title, :description, :body, :tags)
  end
