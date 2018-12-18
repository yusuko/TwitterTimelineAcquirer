# frozen_string_literal: true

require 'byebug'
require './twitter_client'

class TwitterLineGetter

  def timeline
    client = Twitter.client
    target_users.each do |target_user|
      timelines = client.user_timeline(target_user)
      File.open("sample.txt", "a") do |f|
        f.puts(client.user(target_user).name)
        f.puts('')
        timelines.each do |s|
          f.puts(s.text)
          f.puts('*********************')
          f.puts('')
        end
      end
    end
  end

  def target_users
    # You should add account ids to get.
    # ex) ["@target", "@target2"]
    []
  end
end

TwitterLineGetter.new.timeline
