(function () {
  'use strict';

  angular.module('RailsResume')
    .controller('ResumeCtrl', [
      '$scope', 'Page', 
      function ($scope, Page) {
        
        $scope.resume = {}

        Page.show({ page: 'resume' }).$promise.then(function (response) {
          $scope.resume = response;
        });
         
      }
    ]);
})();
