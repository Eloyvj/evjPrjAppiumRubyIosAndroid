# frozen_string_literal: true
# frozen_string_literal: true

class Home_Screen
    def initialize
      @layout_name = 'com.ba.universalconverter:id/keypad'
      @searchButton = 'Search'
      @searchText = 'com.ba.universalconverter:id/search_src_text'
    end
  
    def waitHome
      wait_for_element(id: @layout_name, timeout: 5)
    end

    def homeIsDisplayed
        find_element(id: @layout_name).displayed?
    end

    def clickActionSearchButton
        find_element(id: @searchButton).click
    end

    def fillSearchSrcText (text)
        find_element(id: @searchText).send_keys(text)
    end

    def pressEnterToSearch
        press_keycode(66)
    end
    
  end
  