module SerializableResource
  def parse_json object
    ActiveModelSerializers::SerializableResource.new(object).as_json
  end
end
