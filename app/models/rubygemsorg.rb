class RubyGemOrg
    include HTTParty
    
    # GET - /api/v1/gems/[GEM Name].(json|yaml)
    def self.getGemInfo(name)
        url="https://rubygems.org/api/v1/gems/#{name}.json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
    # GET - /api/v1/owners/[USER HANDLE|USER ID]/gems.(json|yaml)
    def self.getGemsOfAuthor(name)
        url="https://rubygems.org/api/v1/owners/#{name}/gems.json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
        #GET - GET - /api/v1/activity/latest 'https://rubygems.org/api/v1/activity/latest.json' 
    def self.get50LatestGems()
        url="https://rubygems.org/api/v1/activity/latest.json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
end