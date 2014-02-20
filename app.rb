class App < Sinatra::Application
  
  helpers Sinatra::ContentFor

  before do
    content_type :html, :charset => 'utf-8'
  end

  get "/" do
    erb :index
  end

  get "/module/:which" do
    begin
      erb "module#{params[:which]}".to_sym
    rescue Errno::ENOENT
      erb :'404'
    end 
  end

  not_found do
    erb :'404'
  end

end