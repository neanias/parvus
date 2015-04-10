class ButtsSo
  @base_uri = 'http://butts.so/api/v1/create'
  @header = { 'Content-Type' => 'application/json' }

  def self.get_short_url(url)
    options = { body: {url: url}.to_json }
    options[:headers] = @header

    shortcode = HTTParty.post(@base_uri, options)

    "http://butts.so/#{shortcode['shortcode']}"
  end
end
