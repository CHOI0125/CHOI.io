class CommentsController < ApplicationController
    def create
       @comment = Comment.new
       @comment.content = params[:input_comment]
       @comment.home_id = params[:home_id]
       @comment.save
       redirect_to "/home/show/#{params[:home_id]}"
    end 
    
    def destroy
        @comment = Comment.find(params[:home_id])
        @comment.destroy
        redirect_to "/home/show/#{params[:home_id]}"
    end
end
