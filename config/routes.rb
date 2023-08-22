Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'puppeteer/interact_with_chatlio'
  get 'puppeteer/type_message_in_text_field'

  # JS route
  get 'puppeteer/run_script'

end
