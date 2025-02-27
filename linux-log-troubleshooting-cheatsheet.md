# Linux Log Troubleshooting Cheatsheet

## Introduction
Guida rapida per analizzare e diagnosticare i log di sistema in Linux.

## Comandi Comuni
- Visualizza l'ultimo log di sistema:
  ```
  tail -f /var/log/syslog
  ```
- Controlla i messaggi kernel:
  ```
  dmesg | less
  ```
- Esamina i log di systemd:
  ```
  journalctl -xe
  ```
  
## Suggerimenti
- Usa grep per filtrare le informazioni:
  ```
  tail -n 100 /var/log/syslog | grep "error"
  ```
- Consulta la documentazione specifica per servizi particolari.
