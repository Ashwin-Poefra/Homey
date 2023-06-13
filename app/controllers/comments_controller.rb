class CommentsController < ApplicationController

    def create
        @comment = Comment.create!({ comment: comment_params })

        redirect_to project_index_path
    end

    private

    def comment_params
        params.require(:comment)
    end
end
