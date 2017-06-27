/* eslint-env node */
const EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
    // Add options here
    'ember-cli-foundation-6-sass': {
      'foundationJs': 'all',
      // 'foundationJs': [
      //   'core',
      //   'util.box',
      //   'util.keyboard',
      //   'util.mediaQuery',
      //   'util.motion',
      //   'util.nest',
      //   'util.timerAndImageLoader',
      //   'util.touch',
      //   'util.triggers',
      //   'abide',
      //   'accordion',
      //   'accordionMenu',
      //   'drilldown',
      //   'dropdown',
      //   'dropdownMenu',
      //   'equalizer',
      //   'interchange',
      //   'magellan',
      //   'offcanvas',
      //   'orbit',
      //   'responsiveMenu',
      //   'responsiveToggle',
      //   'reveal',
      //   'slider',
      //   'sticky',
      //   'tabs',
      //   'toggler',
      //   'tooltip'
      // ],
    },
  });

  // Use `app.import` to add additional libraries to the generated
  // output files.
  //
  // If you need to use different assets in different
  // environments, specify an object as the first parameter. That
  // object's keys should be the environment name and the values
  // should be the asset to use in that environment.
  //
  // If the library that you are including contains AMD or ES6
  // modules that you would like to import into your application
  // please specify an object with the list of modules as keys
  // along with the exports of each module as its value.

  return app.toTree();
};
