(function () {
  'use strict';

  angular.module('RailsResume')
    .factory('Page', [
    '$resource', 
    function ($resource) {
      
      return $resource('pages/:page', { page: '@page' }, {
        show: {
          method: 'GET',
          responseType: 'json'
        }
      });
       
    }
  ]);
})();