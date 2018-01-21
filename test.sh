# /usr/lib/jvm/java-8-oracle//jre/bin:/home/ninja/bin:/home/ninja/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

# /usr/lib/jvm/java-8-oracle//jre/bin:

# ---
# /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
# /usr/lib/jvm/java-8-oracle//jre/bin

export PATH_COMMON=/home/ninja/bin:/home/ninja/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

export JAVA_HOME=/usr/lib/jvm/default-java
export PATH=$PATH_COMMON:/usr/lib/jvm/default-java


# export ELK_STACK_TALK_HOME=~/github/ELK-Stack
export ELK_STACK_TALK_HOME=/home/ninja/github/ELK-Stack
/opt/logstash/bin/logstash -f ${ELK_STACK_TALK_HOME}/Logstash/logstash-apple-csv.conf

