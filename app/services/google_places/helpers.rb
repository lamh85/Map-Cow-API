module GooglePlaces
  module Helpers
    attr_reader :url_suffix

    def api_key_param
      api_key = Rails.application.credentials.google[:api_key]
      "key=#{api_key}"
    end

    def endpoint
      "https://maps.googleapis.com/maps/api/place/#{url_suffix}"
    end

  end
end