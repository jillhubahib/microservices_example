module ApplicationHelper
  def alert_class_for(msg_type)
    {
      success: "bg-green-100 border-green-500 text-green-700",
      error: "bg-red-100 border-red-500 text-red-700",
      alert: "bg-red-100 border-red-500 text-red-700",
      notice: "bg-blue-100 border-blue-500 text-blue-700"
    }.stringify_keys[msg_type.to_s] || msg_type.to_s
  end
end
