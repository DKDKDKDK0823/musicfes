class HomesController < ApplicationController
  def top
  end

  def map
    @festivals = Festival.all
  end
end
