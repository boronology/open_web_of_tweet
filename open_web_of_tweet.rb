# -*- coding: utf-8 -*-
# 公式Webで開く

Plugin.create :open_web_of_tweet do
    open_command = "xdg-open"
    if UserConfig.has_key?(:url_open_command)
        open_command = UserConfig[:url_open_command]
    end

  command(:open_web_of_tweet,
          name: 'このツイートをWebで開く',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each do |m|
      bg_system(open_command ,"https://twitter.com/#{m.user.idname}/status/#{m.id}")
    end
  end

end
