require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

 get "/"  do 
   erb :index
 end 
 
 
 post "/teams"  do 
 @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @members = members.collect do |member_params|
        Member.new({name: member_params[:name], power: member_params[:power], biography: member_params[:biography]})
      end
   
   erb :team
 end 
end
