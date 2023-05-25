#!/bin/bash

function EnterContainer() {
   docker-compose exec mysql-slave1 bash
}

EnterContainer