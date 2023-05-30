#!/usr/bin/env bash

function CreateEnrollmentTokenWithKibana() {
    docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
    #docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token --scope kibana
}

CreateEnrollmentTokenWithKibana