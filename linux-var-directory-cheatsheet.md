# Linux /var Directory Cheatsheet

## Introduzione
Strumenti e comandi per esaminare la directory /var, che ospita log, cache e dati applicativi.

## Comandi Utili
- Elenca il contenuto di /var:
  ```
  ls -la /var
  ```
- Verifica l'uso del disco:
  ```
  du -sh /var/*
  ```
- Naviga ed analizza le cartelle principali:
  - /var/log: Log di sistema
  - /var/cache: File temporanei e cache
  - /var/tmp: Dati temporanei
  - /var/lib: Database e dati delle applicazioni

## Consigli
- Automatizza controlli usando script per monitorare la crescita dei file.
