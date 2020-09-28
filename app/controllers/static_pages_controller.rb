class StaticPagesController < ApplicationController
  def home
    @lodges = Lodge.find([18,198,205]) 
  end

  def concept
  end
  
  def about
  end
  
  def contact
  end
end
