#!/bin/bash

function EnterContainer() {
   docker-compose exec mysql-slave2 bash
}

EnterContainer