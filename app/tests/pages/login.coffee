`import PageObject from 'ember-cli-page-object'`

{ collection, visitable, clickable, isHidden, count, fillable, value } = PageObject

LoginPage = PageObject.create
  visit: visitable('/login')

  enterEmail: fillable('.login-email')
  enterPassword: fillable('.login-password')

  emailValue: value('.login-email')
  passwordValue: value('.login-password')

  login: clickable('.btn-login')
  logout: clickable('.btn-logout')

  isLoggedIn: count('.login-container')
  isLoggedOut: count('.logout-container')


`export default LoginPage`
