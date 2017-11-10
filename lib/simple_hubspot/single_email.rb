module SimpleHubspot
  class SingleEmail

    class << self

      def send(email_id, to, params = {})
        data = {
          "emailId": email_id,
          "message": {
            "to": to
          }
        }

        contact_properties = Utils.hash_to_properties(params[:contact_properties], key_name: "name") if params[:contact_properties]
        custom_properties = Utils.hash_to_properties(params[:custom_properties], key_name: "name") if params[:custom_properties]

        data['contactProperties'] = contact_properties
        data['customProperties'] = custom_properties

        ApiClient.do_post "/email/public/v1/singleEmail/send", data
      end

    end

  end
end