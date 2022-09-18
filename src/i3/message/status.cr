require "json"

module I3
  class Message
    # Represents a status code returned by various requests.
    class Status
      include JSON::Serializable
      property success : Bool
      property error : String?
    end
  end
end
