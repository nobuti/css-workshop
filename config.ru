STDOUT.sync = true

require 'bundler'
Bundler.require

begin
  require 'rack-livereload'
  use Rack::LiveReload
rescue LoadError
  # gem not installed
end

use Rack::Static, :urls => ['/css', '/images', '/js'], :root => 'public'

require './app'
run App.new