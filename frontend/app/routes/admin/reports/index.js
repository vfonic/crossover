import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    downloadPdf() {
      this.get('store').queryRecord('report', { last: true });
    }
  }
});
