require "json"

module I3
  class Message
    # Represents a window or container's "rect": X and Y coordinates plus width and height.
    class Rect
      include JSON::Serializable
      property x : Int32
      property y : Int32
      property width : Int32
      property height : Int32
    end
  end
end
