# Défi Technique

## Stack pour le défi :

- Rails 7 ou plus
- Database format libre
- IDE libre

## Notions

- Créer des tables dans une bdd (migration)
- Modèle avec des conditions de validation
- Les controlleurs et leurs actions
- Créer des vues avec un formulaire
- Routing (Resources, Collection, Member)
- Table relationnel (Belongs to, Has many)
- Request basic en bdd
- Créer des Helper

## Descriptions

Le but de cet exercice est de connaître l'étendu des connaissances et la capacité d’adaptation du participant

Vous devez créer une interface web permettant de créer X équipes composé de 11 joueurs. Chaque joueur dispose d'un nom, et d'un poste sur le terrain.

Lors d'un match deux équipent complètes précédemment créées s'affrontent. Un nombre de kill aléatoire (entre 0 et 5) est marqué par chacune des équipes.

Un tournois se déroule entre 8 équipes. Chaque équipe ne rencontre qu'une seule fois une autre équipe. Une victoire donne 3 points, un match nul 1 point et une défaite 0 point.

Un classement final sera attendu sous cette forme :

| Equipe      | Points | kill reçu | kill marqués |
|-------------|--------|-----------|--------------|
| nom_equipe1 | 19     | 12        | 33           |
| nom_equipe3 | 15     | 22        | 23           |
| nom_equipe2 | 5      | 40        | 10           |

## Tests à effectuer

### Première étape : Créer une équipe (Niveau Basic)

- [ ] L'équipe doit disposer d'un nom. (Nombre de caractère maximum 50)
- [ ] L'équipe doit disposer d'une ville.
- [ ] Le routing est correct.
- [ ] Le model est correct.
- [ ] Le controller est correct.

### Deuxième étape : Créer les joueurs (Niveau Basic)

- [ ] Un joueur doit avoir un nom
- [ ] Un joueur doit avoir un poste (Heal/Tank/DPS)
- [ ] Le poste est selectable dans un dropdown (liste déroulante)

### Troisième étape : Affecter des joueurs à une équipe (Niveau intermédiaire)

- [ ] Un dropdown permet de sélectionner une équipe précédemment créer dans lequel intégrer le joueur
- [ ] 11 *joueurs maximum par équipe*

### Quatrième étape : Le tournois (Niveau confirmé)

- [ ] Un bouton permet de créer et peupler automatiquement 8 équipes de 11 joueurs
- [ ] Chaque équipe affronte une seule et unique fois une autre équipe (Attribué un score aléatoire suffit)
- [ ] Le résultat des matchs est afficher correctement (Voir Tableau ci-dessus pour la méthode de calcul)

## Test Bonus Non obligatoire

## Description

Le but de cet exercice est d'évaluer les connaissances et les capacités du participant à créer une application web simple pour la gestion de projets.

## Énoncé

Vous devez créer une application web permettant de créer et gérer des projets pour une entreprise.

### Première étape : Créer un projet (Niveau Basic)

- [ ] L'application doit permettre la création d'un projet avec un nom et une description.
- [ ] Le projet doit être sauvegardé en base de données.
- [ ] L'application doit afficher la liste des projets existants.

### Deuxième étape : Ajouter des tâches (Niveau Basic)

- [ ] L'application doit permettre d'ajouter des tâches à un projet.
- [ ] Une tâche doit avoir un nom et une description.
- [ ] Les tâches doivent être sauvegardées en base de données.
- [ ] L'application doit afficher la liste des tâches associées à un projet.

### Troisième étape : Assigner des tâches à des utilisateurs (Niveau intermédiaire)

- [ ] L'application doit permettre d'assigner des tâches à des utilisateurs.
- [ ] Chaque tâche peut être assignée à un utilisateur unique.
- [ ] Les tâches assignées à chaque utilisateur doivent être affichées dans une liste dédiée.

### Quatrième étape : Statut des tâches (Niveau confirmé)

- [ ] L'application doit permettre de définir un statut pour chaque tâche (en cours, terminée, etc.).
- [ ] Les tâches doivent être filtrables par statut.
- [ ] L'application doit afficher la progression du projet en fonction du nombre de tâches terminées.

## Remarques (super bonus)

- L'interface utilisateur doit être claire et facile à utiliser.
- Le code doit être propre et facile à lire.
- Les erreurs doivent être gérées de manière élégante.
- Le code doit être testé de manière adéquate.
