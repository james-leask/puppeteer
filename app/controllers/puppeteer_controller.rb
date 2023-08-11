require 'puppeteer-ruby'

class PuppeteerController < ApplicationController
  def click_button
    browser = Puppeteer.launch
    page = browser.pages.first || browser.new_page

    page.goto('https://www.occam.global/')

    page.click('chatlio_widget')

    browser.close
  end
end



