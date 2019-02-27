require 'sinatra'

get /\/(\d{10})/ do |phone_number|
  %Q{<meta http-equiv="refresh" content="0; URL='tel:+1#{phone_number}'" />}
end
