require 'uri'

module GooglePlaces
  class Index
    include ::GooglePlaces::Helpers

    attr_reader :query, :url_suffix

    def self.run(query)
      new(query).initialized_run
    end

    def initialize(query)
      @url_suffix = 'findplacefromtext/json'
      @query = query
    end

    def initialized_run
      uri_uncoded = "#{endpoint}?#{api_key_param}&input=#{query}&inputtype=textquery"
      uri_encoded = URI::encode(uri_uncoded)
      ::Typhoeus.get(uri_encoded)
    end

    private

    def params
      {
        **api_key_param,
        input: query,
        # locationbias: "point:#{latitude}:#{longtitude}"
      }
    end

  end
end