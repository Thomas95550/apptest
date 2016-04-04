require 'active_record/deprecated_finders'

class GistsController < ApplicationController
	def index
		if(current_user)
			@gists = Gist.all
			@category = Category.all
			cate
			list_cate
	    	user = User.find(session[:user_id])
	      	user = user['name'] 
	      
	      
	       	@venues = RestClient.get 'https://api.github.com/users/' + user +'/gists'
	       	@venues = JSON.parse @venues

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

	def cate
		@user = User.find(session[:user_id])
	
		if(params[:cate])
			@name_cate = params[:cate]
			@new_cat = Category.new(:name_cate => @name_cate, :member_id => @user['id'])
			flash[:notice] = 'Une nouvelle catégorie a été crée : ' + params[:cate] + '.'
			@new_cat.save
			redirect_to '/gists'
		end
	end

	def list_cate
		@all_cat = Category.all		
		@id = @user['id']
   		@test = Category.find_all_by_member_id(@id)
	end

  	def show
    	@category = Category.find params[:id]
  	end

  	def create
  		if(params[:value] && params[:field])
  			@user = User.find(session[:user_id])
  			@id = @user['id']
  			@value = params[:value]
  			@field = params[:field]
  			
  			th = []
  			thh = []

  			@field.each do |k,v|
	        	puts @th = th.push(k)
	        	puts @thh = thh.push(v)
	        end

				@test_all = Gist.find_by(name_gists: th)
	  			@test_alls = Category.find_all_by_id(@value)
			
				@test_all.update(:cat => @value)
				redirect_to '/gists'
  		end
  	end

  	def update
  		Gist.find params[:id]
  	end
end
