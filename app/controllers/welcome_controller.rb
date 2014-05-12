class WelcomeController < ApplicationController
  before_action :set_category, :set_image, :set_options, only: [:play]
  before_action :set_all_categs, only:[:index]
  
  def index
  end

  def play
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find params[:id]
    end

    def set_image
      @imagequestion = Imagequestion.next @category if @category
    end

    def set_options
      @options = Option.where imagequestion: @imagequestion.id if @imagequestion  
    end

    def set_all_categs
  		@categories = Category.all
    end

end
