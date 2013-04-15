# -*- coding: utf-8 -*-
# 公式Webで開く

Plugin.create :open_web_of_tweet do

  command(:open_web_of_tweet,
          name: 'このツイートをWebで開く',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each do |m|
      Gtk::openurl("https://twitter.com/#{m.user.idname}/status/#{m.id}")
    end
  end

end
