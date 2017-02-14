class Api::V1::LinksController < ApplicationController
  
  def create
    link = params["urlToSend"]
    Link.create!(url: link, read_count: 1)
  end
  
end