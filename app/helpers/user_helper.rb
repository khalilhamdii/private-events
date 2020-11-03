module UserHelper

  def future_events(event, date)
    tmp = content_tag :div, :class => "field d-flex justify-content-between" do
      concat(content_tag(:h4, event.title, class: "text-secondary") + " " +  (content_tag(:div, event.date, class: "text-success")))
    end
    container = content_tag :div, :class => "bg-light p-2 mb-2" do
      tmp + content_tag(:div, event.description)
    end
    if date > Time.now
      container
    end
  end

  def previous_events(event, date)
    tmp = content_tag :div, :class => "field d-flex justify-content-between" do
      concat(content_tag(:h4, event.title, class: "text-secondary") + " " +  (content_tag(:div, event.date, class: "text-success")))
    end
    container = content_tag :div, :class => "bg-light p-2 mb-2" do
      tmp + content_tag(:div, event.description)
    end
    if Time.now > date
      container
    end
  end
end
