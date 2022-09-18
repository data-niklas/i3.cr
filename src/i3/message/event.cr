require "json"

module I3
  class Message
    # A namespace for subscribed events.
    #
    # See `Message::EventType` and `Connection#subscribe`.
    module Event
      # Represents the `Message::EventType::WORKSPACE` event response.
      class Workspace
        include JSON::Serializable
        property change : String
        property current : Tree? = nil
        property old : Tree? = nil
      end

      # Represents the `Message::EventType::OUTPUT` event response.
      class Output
        include JSON::Serializable
        property change : String
      end

      # Represents the `Message::EventType::MODE` event response.
      class Mode
        include JSON::Serializable
        property change : String
        property pango_markup : Bool
      end

      # Represents the `Message::EventType::WINDOW` event response.
      class Window
        include JSON::Serializable
        property change : String
        property container : Tree
      end

      alias BarConfigUpdate = Bar

      # Represents the `Message::EventType::BINDING` event response.
      class Binding
        include JSON::Serializable

        class Binding
          include JSON::Serializable
          property command : String
          property event_state_mask : Array(String)
          property input_code : Int32
          property symbol : String
          property input_type : String
        end

        property change : String
        property binding : Binding
      end

      # Represents the `Message::EventType::SHUTDOWN` event response.
      class Shutdown
        include JSON::Serializable
        property change : String
      end
    end
  end
end
