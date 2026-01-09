const { defineConfig } = require('cypress');
const cucumber = require('cypress-cucumber-preprocessor').default;
const allureWriter = require('@shelex/cypress-allure-plugin/writer');

module.exports = defineConfig({
  e2e: {
    screenshotOnRunFailure: true,
    screenshotsFolder: 'cypress/screenshots',

    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber());
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
