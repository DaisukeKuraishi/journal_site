class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # 上の行はインスタンスを作っただけ。saveメソッドで保存しないと、消える。
    @article.save
    # 処理の後はindex画面を表示
    redirect_to articles_path
  end


  private
  def article_params
      params.require(:article).permit(:title, :body)
  end

end
