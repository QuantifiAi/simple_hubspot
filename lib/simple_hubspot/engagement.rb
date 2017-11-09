module SimpleHubspot
  class Engagement

    class << self

      def create(params)
        ApiClient.do_post "/engagements/v1/engagements", params
      end

    end

  end
end