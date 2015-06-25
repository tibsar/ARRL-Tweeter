set :output, 'file.log'

every 3.hours do
  command "morse-tweeter.rb"
end