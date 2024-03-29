require 'sinatra/base'
require_relative "./struggle_table_flipper"
require_relative "./random_happy_emoji"

class StruggleTableFlipperApp < Sinatra::Base

  get "/emoji" do
    @emoji =  RandomHappyEmoji.new
    erb :index
  end

  get "/flipped_struggle" do
    @struggle = StruggleTableFlipper.new(params[:the_struggle]).flipped_struggle
    erb :flipped_struggle
  end

  run! if app_file == $0
end
