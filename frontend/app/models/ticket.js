import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr(),
  description: DS.attr(),
  answer: DS.attr(),
  status: DS.attr(),
  isOpen: Ember.computed.equal('status', 'open')
});
