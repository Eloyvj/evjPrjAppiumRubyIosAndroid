# frozen_string_literal: true

Before do
  driver.start_driver
end

After do
  driver.driver_quit
end

Before('@reinstall') do
  reinstall_apps
end

After('@reinstall') do
  appium_txt = File.join(Dir.pwd, 'ios_appium.txt')
  caps = Appium.load_appium_txt file: appium_txt
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object
end
