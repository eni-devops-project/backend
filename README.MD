# 📌 ToDoList Backend API

Backend REST d'une application ToDoList en architecture mono-utilisateur, développé avec **Node.js**, **Express**, **Sequelize** et **MySQL**.

---

## 🚀 Technologies utilisées

- [Node.js](https://nodejs.org/)
- [Express](https://expressjs.com/)
- [Sequelize](https://sequelize.org/)
- [MySQL](https://www.mysql.com/)
- [Swagger UI](https://swagger.io/tools/swagger-ui/)
- [Jest](https://jestjs.io/) + [Supertest](https://github.com/visionmedia/supertest) *(tests)*

---

## 🗂️ Structure du projet

```
backend/
├── src/
│   ├── config/           # Config BDD & Swagger
│   ├── controllers/      # Logique des routes (CRUD)
│   ├── models/           # Modèles Sequelize
│   ├── routes/           # Définition des routes
│   ├── services/         # Logique métier
│   ├── docs/             # Fichier Swagger
│   ├── middlewares/      # Middlewares Express
│   ├── app.js            # Déclaration des middlewares & routes
│   └── server.js         # Démarrage du serveur
├── tests/                # Tests unitaires et d'intégration
├── .env                  # Variables d’environnement
├── package.json
└── README.md
```

---

## ⚙️ Configuration

1. **Créer un fichier `.env`** à la racine du dossier `backend` :

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=todolist_db
PORT=3000
```

2. **Créer la base de données** dans MySQL :

```sql
CREATE DATABASE todolist_db;
```
Utiliser ensuite le script présent à la racine du projet `scriptSQL.sql`

3. **Installer les dépendances :**

```bash
npm install
```

4. **Lancer le projet en développement :**

```bash
npm run start
```

Le serveur écoute par défaut sur [http://localhost:3000](http://localhost:3000)

---

## 🧪 Lancer les tests

```bash
npm run test
```

---

## 📘 Documentation Swagger

Disponible sur :  
[http://localhost:3000/api/docs](http://localhost:3000/api/docs)

> La documentation est générée automatiquement à partir du fichier `swagger.json`.

---

## 📌 Endpoints REST principaux

| Méthode | Endpoint        | Description               |
|--------:|------------------|----------------------------|
| `GET`   | `/api/tasks`     | Récupère toutes les tâches |
| `GET`   | `/api/tasks/:id` | Récupère une tâche         |
| `POST`  | `/api/tasks`     | Crée une tâche             |
| `PUT`   | `/api/tasks/:id` | Met à jour une tâche       |
| `DELETE`| `/api/tasks/:id` | Supprime une tâche         |

---

## 🔧 À venir

- Mise en conteneurisation avec Docker
- Intégration CI/CD
- Déploiement

---

## 👤 Auteur

Julien Trillard  
[📧 Contact](mailto:julien@exemple.com)
