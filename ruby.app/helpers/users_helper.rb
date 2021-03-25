module UsersHelper
  # 引数で与えられたユーザーのGravatar画像を返す
  def gravatar_for(user,size:180)
    #size = options[:size]
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)#別の場所から呼びだされる可能性も考慮し、downcaseにしておく
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")#最後に実行されたimage_tagが戻り値として返る
  end

end
