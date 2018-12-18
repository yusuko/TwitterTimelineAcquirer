# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.4'
gem 'twitter'

group :development do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'web-console', '>= 3.3.0'
end
