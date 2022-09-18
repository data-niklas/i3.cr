require "json"

module I3
  class Message
    # Represents one element of the response to a `Message::MessageType::GET_OUTPUTS` request.
    #
    # See `Connection#outputs`.
    class Output
      include JSON::Serializable
      property name : String
      property active : Bool
      property primary : Bool
      property current_workspace : String?
      property rect : Rect
    end
  end
end
