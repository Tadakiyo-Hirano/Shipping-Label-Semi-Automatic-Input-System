module ApplicationHelper

  def full_title(page_name = "")
    base_title = "yamato"
    if page_name.empty?
      base_title
    else
      page_name + " | " + base_title
    end
  end

  def search_name
    params[:name].present?
  end
end
