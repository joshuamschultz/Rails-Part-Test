class DiscussionsController < ApplicationController
  
  def index
    @discussed = find_discussed
    @discussions = @discussed.discussions
  end
  
  def create
    @discussed = find_discussed
    @discussion = @discussed.discussions.new(discussion_params)
    if @discussion.save
      flash[:notice] = "Discussion Posted"
      redirect_to @discussed
    else
      render :action => 'new'
    end
  end
 
  private
  def discussion_params
    params.require(:discussion).permit(:body)
  end
  
  def find_discussed
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end
