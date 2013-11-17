module UserHelper
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, class: "gravatar")    
  end

  def self.parse_for_members(string)
    result = []
    string.split('@')[1..-1].each  do |elm|
      found_user = User.find_by_nick_name(elm.match('\w*')[0])
      result << found_user.id if !found_user.nil? && !result.include?(found_user.id)
   end
    result
  end
end