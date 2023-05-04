class CommentsController < ApplicationController
    def create
        @movie = Movie.find(params[:movie_id])
        @comment = @movie.comments.create(comment_params)
        redirect_to movie_path(@movie)
    end

    def destroy
        @movie = Movie.find(params[:movie_id])
        @comment = @movie.comments.find(params[:id])
        @comment.destroy
        redirect_to movie_path(@movie), status: :see_other
      end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
