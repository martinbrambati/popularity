class WelcomeController < ApplicationController
  
  def index
  end
  
  def start
      @imagequestion = Imagequestion.where(category: params[:category][:id]).first
      @options = Option.where imagequestion: @imagequestion.id 
  end

  def end
      @result = Option.find(params[:option][:id]).option_result 
  end

end
