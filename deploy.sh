#!/bin/bash
set -e
LOG=/var/log/deploy.log
echo "$(date) - début du déploiement" >> $LOG
echo "Déploiement du service web..."
echo "$(date) - fin du déploiement" >> $LOG
