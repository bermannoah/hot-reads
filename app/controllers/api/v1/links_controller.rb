class Api::V1::LinksController < ApplicationController
  
  def create
    link = params["urlToSend"]
    found_link = Link.find_or_create_by(url: link)
    found_link.update(read_count: found_link.read_count + 1)
  end
  
end