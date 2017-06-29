import Ember from 'ember';

const { service } = Ember.inject;

export default Ember.Component.extend({
  session: service(),
  currentUser: service(),

  beforeModel(transition) {
    this.get('current-user').get('user').get('admin')
  },

  actions: {
    logout(){
      this.get('logout')();
    }
  }
});
