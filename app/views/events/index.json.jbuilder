json.array! @events, partial: "events/event", as: :event
json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :start_date, :end_date, :created_at, :updated_at
  json.start event.start_date   
  json.end event.end_date   
  json.url event_url(event, format: :html) 
end
