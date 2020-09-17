module UsersHelper

  def provider
    p = current_user.provider
    p == "google_oauth2" ? p = "google" : p
  end
end
