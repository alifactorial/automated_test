module.exports = {
  'Test Factorial website login' : function (browser) {
    browser
      //.url('https://factorialhr.com/users/sign_in')
      .url('https://dev.factorialhr.com/users/sign_in')
      .waitForElementVisible('body')
      .setValue('#user_email', process.env.F_USERNAME)
      .setValue('#user_password', process.env.F_PASSWORD)
      .click('input[name=commit]')
      .url('https://app-dev.factorialhr.com/dashboard')
      .waitForElementVisible('a[href$=dashboard]', 10000)
      .assert.containsText('a[href$=dashboard] > div > div[class^=sectionLabel] > div[class^=label]', 'Dashboard')
      .end();
  }
};
