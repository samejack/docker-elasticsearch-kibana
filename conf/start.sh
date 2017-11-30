#!/bin/bash

# setup remote dictionary
if [ "${REMOVE_EXT_DICT}" != "" ]; then
  echo "Set remove ext dict: ${REMOVE_EXT_DICT}"
  sed -i -e "s/<\!-- <entry key=\"remote_ext_dict\">words_location<\/entry> -->/<entry key=\"remote_ext_dict\">${REMOVE_EXT_DICT//\//\\/}<\/entry>/g" /usr/share/elasticsearch/plugins/ik/config/IKAnalyzer.cfg.xml
fi
if [ "${REMOVE_EXT_STOPWORDS}" != "" ]; then
  echo "Set remove ext stop words: ${REMOVE_EXT_STOPWORDS}"
  sed -i -e "s/<\!-- <entry key=\"remote_ext_stopwords\">words_location<\/entry> -->/<entry key=\"remote_ext_stopwords\">${REMOVE_EXT_STOPWORDS//\//\\/}<\/entry>/g" /usr/share/elasticsearch/plugins/ik/config/IKAnalyzer.cfg.xml
fi

chown elasticsearch:elasticsearch -R /var/log/elasticsearch/
chown elasticsearch:elasticsearch -R /var/lib/elasticsearch/

service elasticsearch start

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf

