require 'puppeteer-ruby'

class PuppeteerController < ApplicationController
  def interact_with_chatlio
    # browser = Puppeteer.launch( headless: false,
    #   args: ['--disable-extensions', '--disable-plugins']
    # )
    browser = Puppeteer.launch(
      args: ['--disable-extensions', '--disable-plugins'],
      headless: false
    )
    
    page = browser.pages.first || browser.new_page
    
    await page.goto('https://www.occam.global/')
    


    await page.wait_for_selector('#cookie_action_close_header');
    await page.click('#cookie_action_close_header');
    await page.wait_for_selector('#hs-eu-confirmation-button');
    await page.click("#hs-eu-confirmation-button");
    await page.wait_for_selector('#chatlio-widget-container');
    await page.click("#chatlio-widget-container");


    await page.wait_for_selector('input[id="Email"]');
    input = await page('input[id="Email"]');
    await page.click('#input[id="Email"]');
    await page.type('#input[id="Email"]', 'jl@occam.global');

#chatlio-widget-container > span:nth-child(2) > div.chatlio-widget-body.chatlio-open.chatlio-bottom-right > div.chatlio-offline-form > div > input[type=text]:nth-child(2)

    browser.close
  end
end



