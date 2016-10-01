class RubyGemOrg
    include HTTParty
    
    # GET - /api/v1/gems/[GEM Name].(json|yaml)
    def self.getGemInfo(name)
        url="https://rubygems.org/api/v1/gems/#{name}.json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
end