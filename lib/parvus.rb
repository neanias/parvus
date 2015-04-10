require 'thor'
require 'httparty'

require_relative 'parvus/version'
require_relative 'parvus/cli'

Dir['parvus/shorteners/**'].each do |shortener|
  require_relative shortener
end
