# frozen_string_literal: true

require 'rspec/expectations'
require 'appium_lib'
require 'pry'

if ENV['PLATFORM'] == 'ios'
  appium_txt = File.join(Dir.pwd, 'ios_appium.txt')
  caps = Appium.load_appium_txt file: appium_txt
elsif ENV['PLATFORM'] == 'android'
  appium_txt = File.join(Dir.pwd, 'android_appium.txt')
  caps = Appium.load_appium_txt file: appium_txt
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
