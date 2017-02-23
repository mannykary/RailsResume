(function () {
  'use strict';

  angular.module('RailsResume')
    .config(['$stateProvider', '$urlRouterProvider',
    function ($stateProvider, $urlRouterProvider) {
      
      $stateProvider
        .state('resume', {
          url: '/resume',
          templateUrl: 'resume/_resume.html'
        });

      $urlRouterProvider.otherwise('resume');

    }
      
  ]);
})();