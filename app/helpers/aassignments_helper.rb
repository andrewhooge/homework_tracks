module AassignmentsHelper

  def markdown(text)
    return sanitize Kramdown::Document.new(text).to_html
  end
end
