class CommentsController < ApplicationController
def create
	@askquestion = Askquestion.find(params[:post_id])
	@comment = @askquestion.comments.create!(params[:comment])
	redirect_to @askquestion
end


end
