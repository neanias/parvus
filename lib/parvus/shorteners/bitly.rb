class Bitly
  @base_uri = 'https://api-ssl.bitly.com'

  def self.get_short_url(url)
    options = { query:
                {
                  access_token: '15a79b3bc8f0e040c1d1ffbe87d18f056f7403bb',
                  longUrl: url,
                  format: 'txt'
      }
    }

    HTTParty.get("#{@base_uri}/v3/shorten", options).strip
  end
end
