`import Ember from 'ember';`
`import Firebase from 'firebase';`

LoginController = Ember.Controller.extend

  loginEmail: undefined
  loginPassword: undefined


  beforeModel: ->
    @get('session').fetch().catch(->)


  setInput: (isValid)  ->
    console.log('setInput ' + isValid)
    if isValid
      $('input').removeClass('is-danger')
      Ember.set(@, 'loginEmail', undefined)
      Ember.set(@, 'loginPassword', undefined)
    else
      $('input').addClass('is-danger')
    

  actions:
    login: (provider) ->
      providerInfo =
        provider: 'password'
        email: @loginEmail
        password: @loginPassword

      @get('session').open('firebaseApp', providerInfo).catch(((data) ->
        @setInput(@get('session.isAuthenticated'))
      ).bind(@))
          

    logout: ->
      @get('session').close()
    

`export default LoginController;`