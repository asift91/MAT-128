<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'mysql-xydwgr.mysql.database.azure.com';
$CFG->dbname    = 'moodle';
$CFG->dbuser    = 'moodle@mysql-xydwgr';
$CFG->dbpass    = '9#36^dwgrphbmERCQ';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => '',
  'dbsocket' => '',
  'dbcollation' => 'utf8_general_ci',
);

$CFG->wwwroot   = 'https://lb-xydwgr.eastus.cloudapp.azure.com';
$CFG->dataroot  = '/moodle/moodledata';
$CFG->admin     = 'admin';
$CFG->sslproxy  = 'true';
$CFG->session_handler_class = '\core\session\redis';
$CFG->session_redis_auth = 'VWMGU6b3G2ceFc4Rdu3muazhtVnBQxBUqZdujUK4mSI=';
$CFG->session_redis_host = 'redis-xydwgr.redis.cache.windows.net';
$CFG->session_redis_port = 6379;  // Optional.
$CFG->session_redis_database = 0;  // Optional, default is db 0.
$CFG->session_redis_prefix = 'moodle_prod'; // Optional, default is don't set one.
$CFG->session_redis_acquire_lock_timeout = 120;
$CFG->session_redis_lock_expire = 7200;

$CFG->directorypermissions = 0770;

require_once(__DIR__ . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
