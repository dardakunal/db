#! /bin/sh
HELM_CHART_HOME="/home/swapnil_gawade9894/helm-charts/newchart"

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
if [ $ch == 1 ]
then
        echo "Creating mysqldb instance using helm chart"
        echo "==================================================================================="
        helm install mysqldb-app $HELM_CHART_HOME/mysqldb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep mysql
        echo "==================================================================================="
        echo "Mysqldb instance created successfully..."
        echo "==================================================================================="
elif [ $ch == 2 ]
then
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
elif [ $ch == 3 ]
then
        echo "Creating orientdb instance using helm chart"
        echo "==================================================================================="
        helm install orientdb-app $HELM_CHART_HOME/orientdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep orientdb
        echo "==================================================================================="
        echo "Orientdbdb instance created successfully..."
        echo "==================================================================================="
elif [ $ch == 4 ]
then
        echo "Creating Influxdb instance using helm chart"
        echo "==================================================================================="
        helm install influxdb-app $HELM_CHART_HOME/influxdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep influxdb
        echo "==================================================================================="
        echo "Influxdb instance created successfully..."
        echo "==================================================================================="
elif [ $ch == 5 ]
then
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
if [ $ch == 6 ]
then
        echo "Creating Opentsdb instance using helm chart"
        echo "==================================================================================="
        helm install opentsdb-app $HELM_CHART_HOME/opentsdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep opentsdb
        echo "==================================================================================="
        echo "Opentsdb instance created successfully..."
        echo "==================================================================================="
if [ $ch == 7 ]
then
        echo "Creating Redisdb instance using helm chart"
        echo "==================================================================================="
        helm install redisdb-app $HELM_CHART_HOME/redisdb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep redisdb
        echo "==================================================================================="
        echo "Redisdb instance created successfully..."
        echo "==================================================================================="
if [ $ch == 8 ]
then
        echo "Creating Cassandradb instance using helm chart"
        echo "==================================================================================="
        helm install cassandradb-app $HELM_CHART_HOME/cassandradb
        sleep 5
        echo "==================================================================================="
        kubectl get all | grep cassandradb
        echo "==================================================================================="
        echo "Cassandradb instance created successfully..."
        echo "==================================================================================="
else
        echo "Invalid choice, please enter value in between 1 to 8"
fi