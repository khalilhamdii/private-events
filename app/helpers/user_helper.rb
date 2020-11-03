module UserHelper
  def future_events(event, date)
    if date > Time.now
      content_tag :div, :class => "bg-light p-4 mb-2 d-flex justify-content-between" do
        concat(
          content_tag(:h4, event.title, class: "text-info") +
          content_tag(:div, event.description) +
          content_tag(:div, event.date, class: "text-warning")
        )
      end
    end
  end

  def past_events(event, date)
    if date < Time.now
      content_tag :div, :class => "bg-light p-4 mb-2 d-flex justify-content-between" do
        concat(
          content_tag(:h4, event.title, class: "text-info") +
          content_tag(:div, event.description) +
          content_tag(:div, event.date, class: "text-warning")
        )
      end
    end
  end
end
