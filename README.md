# Ansible-project

Ce projet Git permet de configurer des machines distances à l'aide d'Ansible afin de déployer une application php.
L'architecture est entièrement dockerisé avec l'implémentation de scripts permettant d'automatiser l'intégralité du processus.
Vous serez connecté au terminal de votre environnement docker où il vous sera possible de travailler avec les commandes Ansible.

## Getting started

1. Mettre votre clé ssh dans le dossier ".ssh".

2. Créer un fichier ".env" en suivant l'exemple ".env.example".

3. Accorder les permissions au script principal à l'aide de la commande "chmod u+x run.sh".

4. Lancer le script à l'aide de la commande

   ```bash
   ./run.sh [AUTO|MANUAL]
   ```

5. S'il s'agit du premier démarrage, il faudra autoriser l'ajout de vos connexions ssh.

6. Pour exécuter uniquement des tags spécifiques, lancez le script en mode "MANUAL" et exécuter la commande

   ```bash
   ansible-playbook main.yml -i inventories --tags [tags_à_exécuter] --skip-tags [tags_à_ignorer]
   ```

7. Avec la configuration actuelle, deux routes sont disponibles :

   - http://XXX.XXX.XXX.XXX/php pour le projet php standard avec une base de données mySQL
   - http://XXX.XXX.XXX.XXX/wordpress pour le projet wordpress

8. Pour quitter le terminal de votre environnement docker, utiliser la commande "exit".

9. Fermer le conteneur docker après l'avoir quitté.

## Authors

- Moncef Hassani (p2102522)
- Rudy Boullier (p2100788)
