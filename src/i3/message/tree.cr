require "json"

module I3
  class Message
    # Represents the response to a `Message::MessageType::GET_TREE` request.
    #
    # See `Connection#tree`.
    class Tree
      include JSON::Serializable
      property id : UInt64
      property name : String?
      property type : String
      property border : String
      property current_border_width : Int32
      property layout : String
      property orientation : String
      property percent : Float32?
      property rect : Rect
      property window_rect : Rect
      property deco_rect : Rect
      property geometry : Rect
      property window : UInt64?
      property urgent : Bool
      property focused : Bool
      property focus : Array(UInt64)
      property nodes : Array(Tree)
      property floating_nodes : Array(Tree)
    end
  end
end
