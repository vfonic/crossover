import Ember from 'ember';

export default Ember.Controller.extend({
  init() {
    const monthNames = [
      "January", "February", "March", "April", "May", "June", "July", "August",
      "September", "October", "November", "December"
    ];

    var d = new Date();
    this.set('currentMonth', monthNames[d.getMonth()]);
  }
});
