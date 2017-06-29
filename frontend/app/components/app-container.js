import Ember from 'ember';
const { service } = Ember.inject;

export default Ember.Component.extend({
  currentUser: service('current-user'),

  actions: {
    logout(){
      this.get('logout')();
    }
  }
});
