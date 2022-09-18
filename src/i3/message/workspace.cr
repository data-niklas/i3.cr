require "json"

module I3
  class Message
    # Represents one element of the response to a `Message::MessageType::GET_WORKSPACES` request.
    #
    # See `Connection#workspaces`.
    class Workspace
      include JSON::Serializable
      property num : Int32
      property name : String
      property visible : Bool
      property focused : Bool
      property urgent : Bool
      property rect : Rect
      property output : String
    end
  end
end
