module Response
  def json_response messages, is_success, data, status
    render json: {
      messages: messages,
      is_success: is_success,
      data: data
    }, status: status
  end
end
