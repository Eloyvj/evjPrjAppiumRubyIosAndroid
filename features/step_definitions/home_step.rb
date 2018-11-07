# frozen_string_literal: true
require 'rspec/expectations'

  Given("I launch app") do
    @home = Home_Screen.new
    @home.waitHome
    @isDisplayed = @home.homeIsDisplayed
    expect(@isDisplayed).to be true
  end
  
  Then("I type {string} in search field") do |string|
    @home.clickActionSearchButton
    @home.fillSearchSrcText (string)
  end
  
  Then("I press on search button") do
    @home.pressEnterToSearch
  end