class GalleriesController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media(ENV['INSTAGRAM_USER_ID'], {:count => 10})
  end

end
