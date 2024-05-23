class ApplicationController < ActionController::Base
  before_action :set_search

  private

  def set_search
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order(created_at: 'DESC')
  end
end
