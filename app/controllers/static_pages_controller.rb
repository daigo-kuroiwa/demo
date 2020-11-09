class StaticPagesController < ApplicationController
  def home
    @lodges = Lodge.find([11,195,203]) 
  end

  def concept
  end
  
  def about
  end
  
  def contact
  end
end
