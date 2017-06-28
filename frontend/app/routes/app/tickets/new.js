import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.createRecord('ticket');
  },

  actions: {
    save(newTicket) {
      newTicket.save().then(() => this.transitionTo('app.tickets')).catch((reason) => {
        this.set('errorMessage', reason.error);
      });
    }
  }
});
