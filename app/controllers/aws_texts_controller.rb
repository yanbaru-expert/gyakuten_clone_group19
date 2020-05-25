class AwsTextsController < ApplicationController 

  def index
    @awstexts = AwsText.all
  end

  def show
    @awstexts = AwsText.find(params[:id])
  end
  
end