// const { defineConfig } = require('cypress')
// const cucumber = require('cypress-cucumber-preprocessor').default
// module.exports = defineConfig({
//   e2e: {
//     setupNodeEvents(on, config) {
//       // implement node event listeners here
//       on('file:preprocessor', cucumber())
//     },
//     specPattern: "cypress/e2e/features/*.feature",
//     baseUrl: "https://ebookstore.com.vn/",
//   },
// });
const { defineConfig } = require('cypress');
const cucumber = require('cypress-cucumber-preprocessor').default;
const allureWriter = require('@shelex/cypress-allure-plugin/writer');

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      // Cấu hình Cucumber
      on('file:preprocessor', cucumber());
      
      // Cấu hình Allure
      allureWriter(on, config);

      return config;
    },
    specPattern: 'cypress/e2e/features/*.feature',
    baseUrl: 'https://ebookstore.com.vn/',
    env: {
      allure: true,
      allureResultsPath: 'allure-results',
    },
  },
});
