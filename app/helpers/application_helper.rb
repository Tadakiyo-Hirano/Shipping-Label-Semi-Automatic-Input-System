module ApplicationHelper

  def full_title(page_name = "")
    base_title = "yamato"
    if page_name.empty?
      base_title
    else
      page_name + " | " + base_title
    end
  end

  def header_logo_link
    if user_signed_in?
      parts_lists_path
    elsif admin_signed_in?
      parts_lists_path
    else
      new_user_session_path
    end
  end

  def search_name
    params[:name].present?
  end
end
