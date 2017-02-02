class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the weclome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    @header = "This is the contest page"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def you_lose
  end

  def secrets
    puts params
    if params[:magic_word] == "kitten"
      redirect_to '/kitten'
    else
      flash[:notice] = "Sorry, you're not authorized to see that page!"
      redirect_to '/you_lose'
    end
  end

#First Kitten Methods
  # def kitten
  #   @header = "How do I make the homepage with a pic?"
  #   requested_size = params[:size]
  #   @kitten_url = "http://placekitten.com/#{requested_size}"
  # end
  #
  # def kittens
  #   requested_size = params[:size]
  #   @kitten_url = "http://placekitten.com/#{requested_size}"
  # end


#Second Kitten Methods
    # def kitten
    #   set_kitten_url
    # end
    #
    # def kittens
    #   set_kitten_url
    # end
    #
    # def set_kitten_url
    #   requested_size = params[:size]
    #   @kitten_url="http://placekitten.com/#{requested_size}"
    # end

    def kitten
    end

    def kittens
    end

    def set_kitten_url
      if params[:size]
      requested_size = params[:size]
      @kitten_url = "http://placekitten.com/#{requested_size}"
      end
    end
  end
