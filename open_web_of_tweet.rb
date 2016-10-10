# -*- coding: utf-8 -*-
# 公式Webで開く

Plugin.create :open_web_of_tweet do

  command(:open_web_of_tweet,
          name: 'このツイートをWebで開く',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each do |m|
      bg_system(UserConfig[:url_open_command],"https://twitter.com/#{m.user.idname}/status/#{m.id}")
    end
  end

end
