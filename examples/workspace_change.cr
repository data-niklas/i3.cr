require "../src/i3"

connection = I3::Connection.new
connection.subscribe "workspace"
loop do
  connection.on_event do |event|
    if event.is_a?(I3::Message::Event::Workspace)
      name = event.as(I3::Message::Event::Workspace).current.as(I3::Message::Tree).name
      if !name.nil?
        puts [name.as(String)].to_json
      end
    end
  end
end
