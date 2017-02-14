class ReadsController < ApplicationController
  def index
    now = Time.now
    @links = Link.where(updated_at: (now - 24.hours)..Time.now)
  end
end