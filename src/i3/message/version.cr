require "json"

module I3
  # Represents the response to a `Message::MessageType::GET_VERSION` request.
  #
  # See `Connection#version`.
  class Message
    class Version
      include JSON::Serializable
      property major : Int32
      property minor : Int32
      property patch : Int32
      property human_readable : String
      property loaded_config_file_name : String
    end
  end
end
