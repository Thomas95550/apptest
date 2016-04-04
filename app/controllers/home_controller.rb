require 'net/http'
require 'json'
require 'uri'
require 'rest-client'


class HomeController < ApplicationController

  def index
    if(current_user)
      user = User.find(session[:user_id])
      user = user['name'] 
      
      
       @venues = RestClient.get 'https://api.github.com/users/' + user +'/gists'
       @venues = JSON.parse @venues

       Gist.delete_all

        if (@venues.is_a?(Array))
            json = @venues
            array = []
              json.each do |key, value|
                puts key
                key['files'].each do |k,v|
                  puts k
                  @send = Gist.new(:name_gists => v['filename'], :gists_type => v['type'], :gists_language => v['language'], :gists_raw_url => v['raw_url'], :gists_size => v['size'],)
                  @send.save
                  puts @array = array.push(v)
                end
              end
        end
      end
  end

  def search
    var = nil
    @var = params[:q]
    if(@var)
      @search = RestClient.get 'https://api.github.com/users/' +  @var +'/gists'
      @search = JSON.parse @search

      if (@search.is_a?(Array))
        json_search = @search
        array_search = []
        json_search.each do |key, value|
          puts key
          key['files'].each do |k,v|
            puts k
            puts @array_search = array_search.push(v)
          end
        end
       end
    end
  end

  def profile
  end

end
