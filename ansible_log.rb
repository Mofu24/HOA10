2023-10-28 13:56:33,367 p=3433 u=flores n=ansible | PLAY [Install and configure Elastic Stack] *************************************
2023-10-28 13:56:33,397 p=3433 u=flores n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai'], gather_timeout=10] ***
2023-10-28 13:56:35,900 p=3433 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 13:56:46,370 p=3433 u=flores n=ansible | ok: [192.168.164.10]
2023-10-28 13:56:46,382 p=3433 u=flores n=ansible | TASK [elasticsearch : Update Grafana Repository Key _raw_params=apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553] ***
2023-10-28 13:56:46,404 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 13:56:48,771 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 13:56:48,778 p=3433 u=flores n=ansible | TASK [elasticsearch : Update APT Cache update_cache=True] **********************
2023-10-28 13:56:48,805 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 13:56:52,206 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 13:56:52,212 p=3433 u=flores n=ansible | TASK [elasticsearch : Install Java name=openjdk-11-jdk, state=present] *********
2023-10-28 13:56:52,259 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 13:58:16,606 p=3433 u=flores n=ansible | The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  ca-certificates-java fonts-dejavu-extra java-common libatk-wrapper-java
  libatk-wrapper-java-jni libgif7 libice-dev libpthread-stubs0-dev libsm-dev
  libx11-dev libx11-doc libxau-dev libxcb1-dev libxdmcp-dev libxt-dev
  openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless
  x11proto-core-dev x11proto-dev xorg-sgml-doctools xtrans-dev
Suggested packages:
  default-jre libice-doc libsm-doc libxcb-doc libxt-doc openjdk-11-demo
  openjdk-11-source visualvm fonts-ipafont-gothic fonts-ipafont-mincho
  fonts-wqy-microhei | fonts-wqy-zenhei
The following NEW packages will be installed:
  ca-certificates-java fonts-dejavu-extra java-common libatk-wrapper-java
  libatk-wrapper-java-jni libgif7 libice-dev libpthread-stubs0-dev libsm-dev
  libx11-dev libx11-doc libxau-dev libxcb1-dev libxdmcp-dev libxt-dev
  openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre
  openjdk-11-jre-headless x11proto-core-dev x11proto-dev xorg-sgml-doctools
  xtrans-dev
0 upgraded, 23 newly installed, 0 to remove and 0 not upgraded.
2023-10-28 13:58:16,607 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 13:58:16,613 p=3433 u=flores n=ansible | TASK [elasticsearch : Add Elasticsearch GPG Key url=https://artifacts.elastic.co/GPG-KEY-elasticsearch] ***
2023-10-28 13:58:16,634 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 13:58:19,185 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 13:58:19,192 p=3433 u=flores n=ansible | TASK [elasticsearch : Install Elasticsearch repo=deb https://artifacts.elastic.co/packages/7.x/apt stable main, state=present, filename=elasticsearch-7.x] ***
2023-10-28 13:58:19,224 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 13:58:25,952 p=3433 u=flores n=ansible | [0;31m--- before: /dev/null[0m
[0;31m[0m[0;32m+++ after: /etc/apt/sources.list.d/elasticsearch-7.x.list[0m
[0;32m[0m[0;36m@@ -0,0 +1 @@[0m
[0;36m[0m[0;32m+deb https://artifacts.elastic.co/packages/7.x/apt stable main[0m
[0;32m[0m

2023-10-28 13:58:25,953 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 13:58:25,958 p=3433 u=flores n=ansible | TASK [elasticsearch : Install Elasticsearch name=elasticsearch-7.x, description=Elasticsearch repository for 7.x packages, baseurl=https://artifacts.elastic.co/packages/7.x/yum, gpgcheck=1, gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch] ***
2023-10-28 13:58:25,978 p=3433 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-28 13:58:27,901 p=3433 u=flores n=ansible | [0;31m--- before: /etc/yum.repos.d/elasticsearch-7.x.repo[0m
[0;31m[0m[0;32m+++ after: /etc/yum.repos.d/elasticsearch-7.x.repo[0m
[0;32m[0m[0;36m@@ -0,0 +1,7 @@[0m
[0;36m[0m[0;32m+[elasticsearch-7.x][0m
[0;32m[0m[0;32m+async = 1[0m
[0;32m[0m[0;32m+baseurl = https://artifacts.elastic.co/packages/7.x/yum[0m
[0;32m[0m[0;32m+gpgcheck = 1[0m
[0;32m[0m[0;32m+gpgkey = https://artifacts.elastic.co/GPG-KEY-elasticsearch[0m
[0;32m[0m[0;32m+name = Elasticsearch repository for 7.x packages[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m

2023-10-28 13:58:27,902 p=3433 u=flores n=ansible | changed: [192.168.164.10]
2023-10-28 13:58:27,910 p=3433 u=flores n=ansible | TASK [elasticsearch : Install Elasticsearch name=elasticsearch, state=present] ***
2023-10-28 14:02:33,944 p=3433 u=flores n=ansible | The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following NEW packages will be installed:
  elasticsearch
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
2023-10-28 14:02:33,945 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 14:03:05,318 p=3433 u=flores n=ansible | changed: [192.168.164.10]
2023-10-28 14:03:05,340 p=3433 u=flores n=ansible | TASK [kibana : Install Kibana on Ubuntu name=kibana, state=present] ************
2023-10-28 14:03:05,393 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:07:28,992 p=3433 u=flores n=ansible | The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following NEW packages will be installed:
  kibana
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
2023-10-28 14:07:28,993 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 14:07:29,000 p=3433 u=flores n=ansible | TASK [kibana : Install Kibana on CentOS name=kibana, state=present] ************
2023-10-28 14:07:29,023 p=3433 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-28 14:10:06,065 p=3433 u=flores n=ansible | changed: [192.168.164.10]
2023-10-28 14:10:06,082 p=3433 u=flores n=ansible | TASK [logstash : Install Logstash on Ubuntu name=logstash, state=present] ******
2023-10-28 14:10:06,121 p=3433 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:13:13,583 p=3433 u=flores n=ansible | The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following NEW packages will be installed:
  logstash
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
2023-10-28 14:13:13,583 p=3433 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 14:13:13,590 p=3433 u=flores n=ansible | TASK [logstash : Install Logstash on CentOs name=logstash, state=present] ******
2023-10-28 14:13:13,613 p=3433 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-28 14:16:04,462 p=3433 u=flores n=ansible | changed: [192.168.164.10]
2023-10-28 14:16:04,484 p=3433 u=flores n=ansible | PLAY RECAP *********************************************************************
2023-10-28 14:16:04,484 p=3433 u=flores n=ansible | 192.168.164.10             : ok=5    changed=4    unreachable=0    failed=0    skipped=7    rescued=0    ignored=0   
2023-10-28 14:16:04,484 p=3433 u=flores n=ansible | 192.168.164.6              : ok=9    changed=8    unreachable=0    failed=0    skipped=3    rescued=0    ignored=0   
2023-10-28 14:40:48,157 p=3894 u=flores n=ansible | PLAY [Install and configure Elastic Stack] *************************************
2023-10-28 14:40:48,200 p=3894 u=flores n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai'], gather_timeout=10] ***
2023-10-28 14:40:54,435 p=3894 u=flores n=ansible | fatal: [192.168.164.6]: FAILED! => {"msg": "Incorrect sudo password"}
2023-10-28 14:41:00,025 p=3894 u=flores n=ansible |  [ERROR]: User interrupted execution

2023-10-28 14:41:08,132 p=3927 u=flores n=ansible | PLAY [Install and configure Elastic Stack] *************************************
2023-10-28 14:41:08,143 p=3927 u=flores n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai'], gather_timeout=10] ***
2023-10-28 14:41:10,042 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:10,954 p=3927 u=flores n=ansible | ok: [192.168.164.10]
2023-10-28 14:41:10,970 p=3927 u=flores n=ansible | TASK [elasticsearch : Update Grafana Repository Key _raw_params=apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553] ***
2023-10-28 14:41:11,007 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:13,264 p=3927 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 14:41:13,273 p=3927 u=flores n=ansible | TASK [elasticsearch : Update APT Cache update_cache=True] **********************
2023-10-28 14:41:13,296 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:16,268 p=3927 u=flores n=ansible | changed: [192.168.164.6]
2023-10-28 14:41:16,277 p=3927 u=flores n=ansible | TASK [elasticsearch : Install Java name=openjdk-11-jdk, state=present] *********
2023-10-28 14:41:16,315 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:18,434 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:18,443 p=3927 u=flores n=ansible | TASK [elasticsearch : Add Elasticsearch GPG Key url=https://artifacts.elastic.co/GPG-KEY-elasticsearch] ***
2023-10-28 14:41:18,484 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:19,869 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:19,877 p=3927 u=flores n=ansible | TASK [elasticsearch : Install Elasticsearch repo=deb https://artifacts.elastic.co/packages/7.x/apt stable main, state=present, filename=elasticsearch-7.x] ***
2023-10-28 14:41:19,926 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:21,294 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:21,302 p=3927 u=flores n=ansible | TASK [elasticsearch : Install Elasticsearch name=elasticsearch-7.x, description=Elasticsearch repository for 7.x packages, baseurl=https://artifacts.elastic.co/packages/7.x/yum, gpgcheck=1, gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch] ***
2023-10-28 14:41:21,316 p=3927 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-28 14:41:23,365 p=3927 u=flores n=ansible | ok: [192.168.164.10]
2023-10-28 14:41:23,372 p=3927 u=flores n=ansible | TASK [elasticsearch : Install Elasticsearch name=elasticsearch, state=present] ***
2023-10-28 14:41:25,525 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:37,323 p=3927 u=flores n=ansible | ok: [192.168.164.10]
2023-10-28 14:41:37,344 p=3927 u=flores n=ansible | TASK [kibana : Install Kibana on Ubuntu name=kibana, state=present] ************
2023-10-28 14:41:37,384 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:39,702 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:39,711 p=3927 u=flores n=ansible | TASK [kibana : Install Kibana on CentOS name=kibana, state=present] ************
2023-10-28 14:41:39,728 p=3927 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-28 14:41:41,611 p=3927 u=flores n=ansible | ok: [192.168.164.10]
2023-10-28 14:41:41,627 p=3927 u=flores n=ansible | TASK [logstash : Install Logstash on Ubuntu name=logstash, state=present] ******
2023-10-28 14:41:41,657 p=3927 u=flores n=ansible | skipping: [192.168.164.10]
2023-10-28 14:41:43,835 p=3927 u=flores n=ansible | ok: [192.168.164.6]
2023-10-28 14:41:43,842 p=3927 u=flores n=ansible | TASK [logstash : Install Logstash on CentOs name=logstash, state=present] ******
2023-10-28 14:41:43,871 p=3927 u=flores n=ansible | skipping: [192.168.164.6]
2023-10-28 14:41:46,063 p=3927 u=flores n=ansible | ok: [192.168.164.10]
2023-10-28 14:41:46,105 p=3927 u=flores n=ansible | PLAY RECAP *********************************************************************
2023-10-28 14:41:46,106 p=3927 u=flores n=ansible | 192.168.164.10             : ok=5    changed=0    unreachable=0    failed=0    skipped=7    rescued=0    ignored=0   
2023-10-28 14:41:46,106 p=3927 u=flores n=ansible | 192.168.164.6              : ok=9    changed=2    unreachable=0    failed=0    skipped=3    rescued=0    ignored=0   
