
**logstash-apple**

```javascript
input {  
  file {
    path => "~/github/ELK-Stack/Logstash/logstash-apple.conf"
    start_position => "beginning"    
  }
}
filter {  
  csv {
      separator => ","
      columns => ["Date","Open","High","Low","Close","Volume","Adj Close"]
  }
  mutate {convert => ["High", "float"]}
  mutate {convert => ["Open", "float"]}
  mutate {convert => ["Low", "float"]}
  mutate {convert => ["Close", "float"]}
  mutate {convert => ["Volume", "float"]}
}
output {  
    elasticsearch {
        action => "index"
        host => "localhost"
        index => "stock"
        workers => 1
    }
    stdout {}
}
```


# Run Logstash

# export ELK_STACK_TALK_HOME=~/github/ELK-Stack
export ELK_STACK_TALK_HOME=~/Desktop/DevOps/code/github/Pabloin/ELK-Stack



 
   /usr/local/bin/logstash -f ${ELK_STACK_TALK_HOME}/logstash/logstash-apple.conf
/opt/logstash/bin/logstash -f ${ELK_STACK_TALK_HOME}/logstash/logstash-apple.conf