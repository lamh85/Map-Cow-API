module GooglePlaces
  class Show
    include ::GooglePlaces::Helpers

    def self.run(url_suffix)
      new(url_suffix).initialized_run
    end

    def initialize(url_suffix)
      @url_suffix = url_suffix
    end

    private

    def initialized_run
    end
  end
end
