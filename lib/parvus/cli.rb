require_relative 'shorteners/butts_so'
require_relative 'shorteners/bitly'

class CommandLineParser < Thor
  map '--version' => :version, '-v' => :version

  desc 'shorten URL',
    'shortens the given URL using a service (butts.so by default)'
  method_option :service, type: :string, default: 'butts.so', aliases: '-s',
    enum: %w(butts.so bitly)
  def shorten(url)
    puts ButtsSo.get_short_url(url) if options[:service].eql? 'butts.so'
    puts Bitly.get_short_url(url) if options[:service].eql? 'bitly'
  end

  desc 'version', 'prints out the version of parvus installed'
  def version
    puts Parvus::VERSION
  end
end
