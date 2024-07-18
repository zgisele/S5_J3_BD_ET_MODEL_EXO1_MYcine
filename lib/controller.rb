#require 'bundler'

#Bundler.require
require 'sinatra/base'
#require 'gossip'
require 'pry'
require_relative 'gossip'
class ApplicationController < Sinatra::Base


    get '/' do
        erb :index ,locals:{ gossips: Gossip.all } 
    end
    
    get '/gossips/new' do
        erb :new_gossip
    end
    #run! if app_file == $0
    post '/gossips/new' do
        author = params["gossip_author"]
        content = params["gossip_content"]
        Gossip.new(author, content).save
        redirect '/'
        puts"Vous ete  #{gossip.author} et vous dit #{gossip.content }"
    end

end
#binding.pry