#! /bin/sh
HELM_CHART_HOME="/root/db"

#Display menu to user
echo "Please enter your choice: "
echo "1) Mysqldb"
echo "2) Mongodb"
echo "3) Orientdb"
echo "4) Influxdb"
echo "5) Elasticsearch"
echo "6) Opentsdb"
echo "7) redisdb"
echo "8) Cassandradb"

#Taking input from the user
read ch

#Based on choice creating db instance
case $ch in
 "1")
        echo "Enter the relase Name"
        read release_name
        echo "Creating $release_name mysqldb instance using helm chart"
        echo "==================================================================================="
        helm install $release_name $HELM_CHART_HOME/mysql
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep mysql
        echo "==================================================================================="
        echo "Mysqldb instance created successfully..."
        echo "==================================================================================="
        ;;
"2")
        echo "Creating Mongodb instance using helm chart"
        echo "==================================================================================="
        helm install mongodb-app $HELM_CHART_HOME/mongodb
        sleep 5
        echo "==================================================================================="
        helm install mongoexpress-app $HELM_CHART_HOME/mongoexpress
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep mongo
        echo "==================================================================================="
        echo "Mongodb instance created successfully..."
        echo "==================================================================================="
        ;;
"3")
        echo "Creating orientdb instance using helm chart"
        echo "==================================================================================="
        helm install orientdb-app $HELM_CHART_HOME/orientdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep orientdb
        echo "==================================================================================="
        echo "Orientdbdb instance created successfully..."
        echo "==================================================================================="
        ;;
"4")
        echo "Creating Influxdb instance using helm chart"
        echo "==================================================================================="
        helm install influxdb-app $HELM_CHART_HOME/influxdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep influxdb
        echo "==================================================================================="
        echo "Influxdb instance created successfully..."
        echo "==================================================================================="
        ;;
"5")
        echo "Creating Elasticsearch instance using helm chart"
        echo "==================================================================================="
        helm install elasticsearch-app $HELM_CHART_HOME/elasticsearch
        sleep 5
        echo "==================================================================================="
        helm install kibana-app $HELM_CHART_HOME/kibana
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep elasticsearch
        kubectl get all | grep kibana
        echo "==================================================================================="
        echo "Elasticsearch instance created successfully..."
        echo "==================================================================================="
        ;;
"6")
        echo "Creating Opentsdb instance using helm chart"
        echo "==================================================================================="
        helm install opentsdb-app $HELM_CHART_HOME/opentsdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep opentsdb
        echo "==================================================================================="
        echo "Opentsdb instance created successfully..."
        echo "==================================================================================="
        ;;
"7")
        echo "Creating Redisdb instance using helm chart"
        echo "==================================================================================="
        helm install redisdb-app $HELM_CHART_HOME/redisdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep redisdb
        echo "==================================================================================="
        echo "Redisdb instance created successfully..."
        echo "==================================================================================="
        ;;
"8")
        echo "Creating Cassandradb instance using helm chart"
        echo "==================================================================================="
        helm install cassandradb-app $HELM_CHART_HOME/cassandradb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep cassandradb
        echo "==================================================================================="
        echo "Cassandradb instance created successfully..."
        echo "==================================================================================="
        ;;
*)
        echo "Invalid choice, please enter value in between 1 to 8"
        ;;
esac
