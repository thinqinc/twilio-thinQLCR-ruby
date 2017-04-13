module TwilioThinqlcr
  # The main twilio wrapper class that integrates thinQ.
  class TwilioWrapper

    THINQ_DOMAIN = "wap.thinq.com"
    TWIML_RESOURCE_URL_DEFAULT = "http://demo.twilio.com/docs/voice.xml"

    attr_accessor :client, :twilio_account_sid, :twilio_account_token, :thinQ_id, :thinQ_token

    def initialize(twilio_account_sid, twilio_account_token, thinQ_id, thinQ_token)
      @twilio_account_sid = twilio_account_sid
      @twilio_account_token = twilio_account_token
      @thinQ_id = thinQ_id
      @thinQ_token = thinQ_token

      @client = Twilio::REST::Client.new twilio_account_sid, twilio_account_token
    end

    def isClientValid?
        !@client.nil? and !@client.account.nil?
    end

    def call(from, to, twiml_resource_url = nil)
        @twiml_resource_url = twiml_resource_url ||= TWIML_RESOURCE_URL_DEFAULT
        if !self.isClientValid?
          return "Invalid Twilio Account details."
        end

        begin
          # :url => @twiml_resource_url,
          @call = @client.account.calls.create({:to => "sip:#{to}@#{THINQ_DOMAIN}?thinQid=#{@thinQ_id}&thinQtoken=#{@thinQ_token}",
                                                :from => from,
                                                :url => @twiml_resource_url})
          return  @call
        rescue Exception => e
          return e.message
        end
    end

  end
end
