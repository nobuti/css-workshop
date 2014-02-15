class App < Sinatra::Application
  
  helpers Sinatra::ContentFor

  before do
    content_type :html, :charset => 'utf-8'
  end

  get "/" do
    erb :index
  end

  not_found do
    erb :'404'
  end

end