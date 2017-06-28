import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('admin', { path: '/admin' }, function() {
    this.route('tickets');
    this.route('reports');
    this.route('users');
  });

  this.route('app', { path: '/' }, function() {
    this.route('tickets', function() {
      this.route('new');
      this.route('show', { path: '/:id' });
    });
    this.route('login');
    this.route('logout');
  });
});

export default Router;
