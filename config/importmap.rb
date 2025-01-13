# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix", to: "https://ga.jspm.io/npm:trix@2.1.10/dist/trix.esm.min.js"
pin "@rails/actiontext", to: "actiontext.js"
