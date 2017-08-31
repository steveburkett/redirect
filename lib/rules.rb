class Rules
   def initialize(uri)
     @uri = uri
   end

  def lookup
    path = @uri.path
    path.gsub!(/^\//, '')

    RedirectUrl.all.each do | rule |
      matches = path.match(/#{rule.from}/)
      if matches.present?
        hashes = Hash[ matches.names.zip( matches.captures ) ]
        if hashes.keys.count > 0
          to_url = rule.to
          hashes.each do |key, value|
            to_url.gsub!(key, value)
          end
          return to_url
        end
      end
    end

    @url #return url as default
  end
end