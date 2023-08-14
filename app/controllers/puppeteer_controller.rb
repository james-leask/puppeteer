require 'puppeteer-ruby'

class PuppeteerController < ApplicationController
  def interact_with_chatlio
    browser = Puppeteer.launch( headless: false,
      args: ['--disable-extensions', '--disable-plugins']
    )
    
    
    page = browser.pages.first || browser.new_page
    
    await page.goto('https://www.occam.global/')
    


    await page.wait_for_selector('.cookie_action_close_header');
    await page.click("cookie_action_close_header");
    await page.wait_for_selector('.hs-eu-confirmation-button');
    await page.click("a#button");
    await page.click('a#button');
    

    page.wait_for_selector('email')
    page.click('email')

    browser.close
  end
end



