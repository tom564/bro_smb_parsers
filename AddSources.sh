#!/bin/bash 

## Add the new log sources to syslog-ng.conf for smb related parsers ## 
if ! grep 'source s_bro_smb_files' /etc/syslog-ng/syslog-ng.conf >> /dev/null; then 

sed -i '/^source s_bro_ssh/a source s_bro_smb_files { file("/nsm/bro/logs/current/smb_files.log" flags(no-parse) program_override("bro_smb_files")); };' /etc/syslog-ng/syslog-ng.conf || echo "Error adding s_bro_smb_files"

sed -i '/source(s_bro_ssh);/a \\tsource(s_bro_smb_files);' /etc/syslog-ng/syslog-ng.conf || echo "Error adding s_bro_smb_files"

sed -i '/^source s_bro_ssh/a source s_bro_ntlm { file("/nsm/bro/logs/current/ntlm.log" flags(no-parse) program_override("bro_ntlm")); };' /etc/syslog-ng/syslog-ng.conf || echo "Error adding s_bro_smb_mapping"

sed -i '/source(s_bro_ssh);/a \\tsource(s_bro_ntlm);' /etc/syslog-ng/syslog-ng.conf || echo "Error adding s_bro_ntlm"

sed -i '/^source s_bro_ssh/a source s_bro_smb_mapping { file("/nsm/bro/logs/current/smb_mapping.log" flags(no-parse) program_override("bro_smb_mapping")); };' /etc/syslog-ng/syslog-ng.conf || echo "Error adding s_bro_smb_mapping"

sed -i '/source(s_bro_ssh);/a \\tsource(s_bro_smb_mapping);' /etc/syslog-ng/syslog-ng.conf || echo "Error adding s_bro_smb_mapping"

echo "Added new sources"
service syslog-ng restart

echo "Done" 

else 

echo "Some error occured, likely one of the log sources already in syslog-ng.conf"
fi 




