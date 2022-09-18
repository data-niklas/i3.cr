require "json"

module I3
  class Message
    # Represents the response to a `Message::MessageType::GET_BAR_CONFIG` request.
    #
    # See `Connection#bar_config`.
    class Bar
      include JSON::Serializable

      class Colors
        include JSON::Serializable
        property background : String?
        property statusline : String?
        property separator : String?
        property focused_background : String?
        property focused_statusline : String?
        property focused_separator : String?
        property focused_workspace_text : String?
        property focused_workspace_bg : String?
        property focused_workspace_border : String?
        property active_workspace_text : String?
        property active_workspace_bg : String?
        property active_workspace_border : String?
        property inactive_workspace_text : String?
        property inactive_workspace_bg : String?
        property inactive_workspace_border : String?
        property urgent_workspace_text : String?
        property urgent_workspace_bg : String?
        property urgent_workspace_border : String?
        property binding_mode_text : String?
        property binding_mode_bg : String?
        property binding_mode_border : String?
      end

      property id : String
      property mode : String
      property position : String
      property status_command : String
      property font : String
      property workspace_buttons : Bool
      property binding_mode_indicator : Bool
      property verbose : Bool
      property colors : Colors
    end
  end
end
