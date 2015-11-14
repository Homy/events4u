module UsersHelper
# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    default_url = "#{root_url}images/guest.png"
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=24&d=#{CGI.escape(default_url)}"
    image_tag(gravatar_url, alt: "Logged in as " + user.email, class: "gravatar")
  end
end