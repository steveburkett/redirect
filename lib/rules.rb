class Rules
   def initialize(uri)
     @uri = uri
   end

  def lookup
    path = @uri.path

    RedirectUrl.all.each do | rule |
      matches = path.match(/#{rule.from}/)
      if matches.present?
        to_url = rule.to
        binding.pry
        matches.each do |match|
          to_url.sub!(match.to_s)
        end
        binding.pry
        return to_url
      end
    end

    binding.pry
    @url #return url as default
  end
end