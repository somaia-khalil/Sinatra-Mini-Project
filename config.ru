require_relative './config/environment'

use ApplicationController
use UserController
use TreeController
run ApplicationController
