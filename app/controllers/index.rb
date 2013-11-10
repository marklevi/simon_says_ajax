require 'json'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do
  content_type :json
  cell= rand(1..9)
  color= "#" + "%06x" % (rand * 0xffffff)
  return_obj = {:cell => cell, :color => color}

  if request.xhr?
    return_obj.to_json

  end


end