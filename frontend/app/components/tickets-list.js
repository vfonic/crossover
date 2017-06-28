import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    toggleStatus(ticket){
      if (ticket.get('status') === 'lol') {
        ticket.set('status', 'open');
      } else {
        ticket.set('status', 'lol');
      }
      ticket.save();
    }
  }
});
