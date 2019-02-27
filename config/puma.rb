workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = ENV.fetch("SINATRA_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'
