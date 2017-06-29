import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    save(ticket) {
      this.sendAction('action', ticket);
    }
  }
});
