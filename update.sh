#!/bin/bash

srcDbServerName=${1}  # mysql-xydwgr.mysql.database.azure.com  
srcDbAdmin=${2}       # moodle@mysql-xydwgr                         
srcDbPass=${3}        # 9#36^dwgrphbmERCQ   
srcDbName=${4}        # moodle

tgtDbServerName=${5}  
tgtDbAdmin=${6}
tgtDbPass=${7}
tgtDbName=${8}

srcDbtype=${9}        # mysqli
tgtDbtype=${10}

# if above parameter #10 is not accepting then use {$10} instead of ${10}

srcwwwroot=${11}      # https://lb-xydwgr.eastus.cloudapp.azure.com
tgtwwwroot=${12}

srcdataroot=${13}     # /var/moodledata
tgtdataroot=${14}     # /moodle/moodledata

filepath=${15}        # /moodle/config.php

# update database details in config.php
function updateMoodleConfig
{
    sed -i "s/\${srcDbServerName}/${tgtDbServerName}/g" $filepath

    # sudo sed -i "s/\${srcDbServerName}/${tgtDbServerName}/g" $filepath
    # sudo sed -i "s/\${srcDbServerName}/${tgtDbServerName}/g" $filepath
    # sudo sed -i "s/\${srcDbAdmin}/${tgtDbAdmin}/g" $filepath
    # sudo sed -i "s/\${srcDbPass}/${tgtDbPass}/g" $filepath
    # sudo sed -i "s/\${srcDbName}/${tgtDbName}/g" $filepath
    # sudo sed -i "s/\${srcDbtype}/${tgtDbtype}/g" $filepath
    # sudo sed -i "s/\${srcwwwroot}/${tgtwwwroot}/g" $filepath
    # sudo sed -i "s/\${srcdataroot}/${tgtdataroot}/g" $filepath
}

# calling functions
updateMoodleConfig

# bash run.sh mysql-xydwgr.mysql.database.azure.com moodle@mysql-xydwgr 9#36^dwgrphbmERCQ moodle mysqlserver.com admin@mysql.com passwd moodle2 mysqli mysqlii https://lb-xydwgr.eastus.cloudapp.azure.com https://target.eastus.cloudapp.azure.com /moodle/moodledata /var/moodledata /home/azureadmin/test.php


