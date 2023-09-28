class PostsController < ApplicationController

  def index  #index アクションを定義した
    @posts = Post.all #すべてのレコードを@postに代入
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
