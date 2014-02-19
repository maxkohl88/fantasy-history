class CommentsController < ApplicationController
  
  http_basic_authenticate_with_name: name: "dhh", password: "secret", only: :destroy

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
      
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destory

    redirect_to post_path(@post)
  end
end
