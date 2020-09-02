class StaticPagesController < ApplicationController
  def home
    @lodges = Lodge.find([89,104,156]) 
  end

  def concept
  end
  
  def about
  end
  
  def contact
  end
end
