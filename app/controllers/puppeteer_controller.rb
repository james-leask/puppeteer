# require 'puppeteer'
require 'puppeteer-ruby'

# class PuppeteerController < ApplicationController
#   def interact_with_chatlio
#     browser = Puppeteer.launch(
#       headless: false
#     )
    
#     page = browser.pages.first || browser.new_page
    
#     await page.goto('https://www.occam.global/')
    
#     ## Accepts Cookies
#     await page.wait_for_selector('#cookie_action_close_header');
#     await page.click('#cookie_action_close_header');
#     await page.wait_for_selector('#hs-eu-confirmation-button');
#     await page.click("#hs-eu-confirmation-button");

#     ## Opens Widget
#     await page.wait_for_selector('#chatlio-widget-container');
#     await page.click("#chatlio-widget-container");
  
#     ## Email field
#     # page.wait_for_selector('#chatlio-widget-container');
#     await page.click('span');
#     # await page.keyboard.type('span', 'test@test.com', {delay: 120});
#     await page.waitForSelector('#chatlio-widget-container');
#     await page.type('#chatlio-widget-container', 'test@test.com');


    # Message field
    # await page.wait_for_selector('#chatlio-offline-message')
    # await page.click('#chatlio-offline-message')
    # page.type('#chatlio-offline-message', 'test test test', {delay: 120});

    
    # browser.close

    # render plain: 'Input received'

#   end
# end



class PuppeteerController < ApplicationController
  def type_message_in_text_field
    browser = Puppeteer.launch(
      headless: false
    )

    page = browser.pages.first || browser.new_page
    
    await page.goto('https://fantasy.premierleague.com/')
    
    await page.wait_for_selector('#onetrust-accept-btn-handler');
    await page.click('#onetrust-accept-btn-handler');

    await page.click("#loginUsername");
    page.type_text('#loginUsername', 'user@email.com' )

    browser.close

    render plain: 'Input received'
  
  end
end


### Trying with Javascript and Puppeteer ###
# class PuppeteerController < ApplicationController
#   def run_script
#     browser = Puppeteer.launch(
#              headless: false
#            )
#     result = `node puppeteer_script.js`
#     render plain: result

#   end
# end

