`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'event'
  @route 'login'
  @route 'teams', ->
    @route 'show', {path: '/:team_id'}
  @route 'user', ->
    @route 'create'

`export default Router;`
