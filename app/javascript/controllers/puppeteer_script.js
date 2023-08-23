const puppeteer = require('puppeteer');

(async ()  => {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  
  await page.goto('https://www.occam.global/');

  const buttonSelector = '#cookie_action_close_header';
  await page.waitForSelector(buttonSelector);
  await page.click(buttonSelector);
  
  console.log("FOUND")
  
  await browser.close();
})();