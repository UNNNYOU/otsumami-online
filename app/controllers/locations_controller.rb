class LocationsController < ApplicationController
  def search
    @posts = Post.all.with_coordinates
    gon.posts = @posts
  end
end
