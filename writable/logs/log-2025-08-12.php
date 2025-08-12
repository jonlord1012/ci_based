<?php defined('SYSTEMPATH') || exit('No direct script access allowed'); ?>

CRITICAL - 2025-08-12 08:40:41 --> ParseError: syntax error, unexpected token ",", expecting ")"
in APPPATH\Config\Routes.php on line 25.
 1 SYSTEMPATH\CodeIgniter.php(811): CodeIgniter\Router\RouteCollection->loadRoutes()
 2 SYSTEMPATH\CodeIgniter.php(450): CodeIgniter\CodeIgniter->tryToRouteIt(null)
 3 SYSTEMPATH\CodeIgniter.php(361): CodeIgniter\CodeIgniter->handleRequest(null, Object(Config\Cache), false)
 4 FCPATH\index.php(79): CodeIgniter\CodeIgniter->run()
CRITICAL - 2025-08-12 08:40:46 --> ParseError: syntax error, unexpected token ",", expecting ")"
in APPPATH\Config\Routes.php on line 25.
 1 SYSTEMPATH\CodeIgniter.php(811): CodeIgniter\Router\RouteCollection->loadRoutes()
 2 SYSTEMPATH\CodeIgniter.php(450): CodeIgniter\CodeIgniter->tryToRouteIt(null)
 3 SYSTEMPATH\CodeIgniter.php(361): CodeIgniter\CodeIgniter->handleRequest(null, Object(Config\Cache), false)
 4 FCPATH\index.php(79): CodeIgniter\CodeIgniter->run()
INFO - 2025-08-12 08:44:36 --> Session: Class initialized using 'CodeIgniter\Session\Handlers\FileHandler' driver.
INFO - 2025-08-12 08:45:08 --> Session: Class initialized using 'CodeIgniter\Session\Handlers\FileHandler' driver.
CRITICAL - 2025-08-12 08:45:17 --> Error: Class "App\Models\UserModel" not found
in APPPATH\Libraries\Auth.php on line 21.
 1 APPPATH\Config\Services.php(39): App\Libraries\Auth->__construct()
 2 SYSTEMPATH\Config\BaseService.php(199): Config\Services::auth(false)
 3 APPPATH\Config\Services.php(36): CodeIgniter\Config\BaseService::getSharedInstance('auth')
 4 APPPATH\Filters\AuthFilter.php(14): Config\Services::auth()
 5 SYSTEMPATH\Filters\Filters.php(182): App\Filters\AuthFilter->before(Object(CodeIgniter\HTTP\IncomingRequest), null)
 6 SYSTEMPATH\CodeIgniter.php(475): CodeIgniter\Filters\Filters->run('dashboard', 'before')
 7 SYSTEMPATH\CodeIgniter.php(361): CodeIgniter\CodeIgniter->handleRequest(null, Object(Config\Cache), false)
 8 FCPATH\index.php(79): CodeIgniter\CodeIgniter->run()
INFO - 2025-08-12 08:45:26 --> Session: Class initialized using 'CodeIgniter\Session\Handlers\FileHandler' driver.
INFO - 2025-08-12 08:45:31 --> Session: Class initialized using 'CodeIgniter\Session\Handlers\FileHandler' driver.
CRITICAL - 2025-08-12 08:45:38 --> Error: Class "App\Models\UserModel" not found
in APPPATH\Libraries\Auth.php on line 21.
 1 APPPATH\Config\Services.php(39): App\Libraries\Auth->__construct()
 2 SYSTEMPATH\Config\BaseService.php(199): Config\Services::auth(false)
 3 APPPATH\Config\Services.php(36): CodeIgniter\Config\BaseService::getSharedInstance('auth')
 4 SYSTEMPATH\Common.php(1008): Config\Services::auth()
 5 APPPATH\Controllers\Login.php(11): service('auth')
 6 SYSTEMPATH\CodeIgniter.php(943): App\Controllers\Login->index()
 7 SYSTEMPATH\CodeIgniter.php(503): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\Login))
 8 SYSTEMPATH\CodeIgniter.php(361): CodeIgniter\CodeIgniter->handleRequest(null, Object(Config\Cache), false)
 9 FCPATH\index.php(79): CodeIgniter\CodeIgniter->run()
CRITICAL - 2025-08-12 08:47:19 --> Error: Class "Config\JambulValidation" not found
in SYSTEMPATH\Validation\Validation.php on line 715.
 1 SYSTEMPATH\Validation\Validation.php(121): CodeIgniter\Validation\Validation->loadRuleSets()
 2 SYSTEMPATH\Config\Services.php(824): CodeIgniter\Validation\Validation->__construct(Object(Config\Validation), Object(CodeIgniter\View\View))
 3 SYSTEMPATH\Config\BaseService.php(258): CodeIgniter\Config\Services::validation(Object(Config\Validation), false)
 4 SYSTEMPATH\BaseModel.php(344): CodeIgniter\Config\BaseService::__callStatic('validation', [...])
 5 SYSTEMPATH\Model.php(158): CodeIgniter\BaseModel->__construct(null)
 6 APPPATH\Libraries\Auth.php(21): CodeIgniter\Model->__construct()
 7 APPPATH\Config\Services.php(39): App\Libraries\Auth->__construct()
 8 SYSTEMPATH\Config\BaseService.php(199): Config\Services::auth(false)
 9 APPPATH\Config\Services.php(36): CodeIgniter\Config\BaseService::getSharedInstance('auth')
10 SYSTEMPATH\Common.php(1008): Config\Services::auth()
11 APPPATH\Controllers\Login.php(11): service('auth')
12 SYSTEMPATH\CodeIgniter.php(943): App\Controllers\Login->index()
13 SYSTEMPATH\CodeIgniter.php(503): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\Login))
14 SYSTEMPATH\CodeIgniter.php(361): CodeIgniter\CodeIgniter->handleRequest(null, Object(Config\Cache), false)
15 FCPATH\index.php(79): CodeIgniter\CodeIgniter->run()
INFO - 2025-08-12 08:47:43 --> Session: Class initialized using 'CodeIgniter\Session\Handlers\FileHandler' driver.
