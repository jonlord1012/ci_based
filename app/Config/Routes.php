<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */


/* GLOBAL */
$routes->get('/', 'Dashboard::index');
$routes->get('dashboard', 'Dashboard::index');
$routes->get('login', 'Login::index');
$routes->post('login/auth', 'Login::authenticate');
$routes->get('logout', 'Login::logout');
$routes->get('unauthorized', 'Login::unauthorized');
$routes->get('debug', 'Home::debug');
$routes->set404Override(function () {
   return view('unauthorized');
});



/* BckNd */
$routes->group('bck', /*['filter' => 'auth'],*/ function ($routes) {
   # COA 
   $routes->get('coa', 'BckNd\Coa::index');

   # Report Name 
   $routes->get('rptname', 'BckNd\ZReports::reportName');
   
   # USERS
   $routes->get('users', 'BckNd\Users::index');
   $routes->get('users/delete/(:any)', 'BckNd\Users::delete/$1');
   $routes->get('audit-logs', 'BckNd\AuditLog::index');
   $routes->post('users/save', 'BckNd\Users::save');
});

/* ACCOUNTING */
$routes->group('accounting', ['filter' => 'auth'], function ($routes) {
   $routes->get('journal', 'Accounting::journalEntry');
   $routes->post('journal/save', 'Accounting::saveJournal');

});