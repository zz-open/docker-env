#!/bin/bash

function EnterContainer() {
   docker-compose exec mysql-master1 bash
}

EnterContainer