# Linux System and Applications Update Cheatsheet

## Introduzione
Guida rapida per mantenere aggiornato il sistema e le applicazioni in Linux.

## Per Distribuzioni Debian/Ubuntu
- Aggiorna la lista dei pacchetti:
  ```
  sudo apt update
  ```
- Aggiorna i pacchetti installati:
  ```
  sudo apt upgrade -y
  ```
- Rimuovi pacchetti non necessari:
  ```
  sudo apt autoremove -y
  ```

## Per Distribuzioni Red Hat/CentOS/Fedora
- Aggiorna i pacchetti:
  ```
  sudo yum update -y
  ```
  oppure
  ```
  sudo dnf update -y
  ```

## Suggerimenti
- Esegui controlli periodici per evitare vulnerabilità.
- Considera il riavvio del sistema in seguito agli aggiornamenti critici.
