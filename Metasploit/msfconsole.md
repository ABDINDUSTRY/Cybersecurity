````markdown
# 📌 Introduction à Metasploit (msfconsole)

## 🚀 Lancement
- **Commande :**
  ```bash
  msfconsole
````

Permet d’ouvrir l’interface principale du framework Metasploit.

* **Interface :**
  Une fois lancé, l’invite de commande devient :

  ```
  msf6 >
  ```

  (ou `msf5 >` selon la version).

<img width="1582" height="1360" alt="image" src="https://github.com/user-attachments/assets/48abf3a4-5122-4798-88f4-425d2610ee07" />

---

## 🖥️ Fonctionnalités

* Supporte la plupart des commandes Linux (`ls`, `ping`, `clear`).
* Exemple :

  ```bash
  ping -c 1 8.8.8.8
  ```

  → envoie une seule requête ICMP vers Google DNS.
* Limitations : pas de redirection de sortie (`>`).

<img width="2256" height="584" alt="image" src="https://github.com/user-attachments/assets/74371926-bfcc-4bf6-9dee-a93b474941c2" />

---

## 📖 Commande `help`

* `help` → liste toutes les commandes disponibles.
* `help [commande]` → affiche l’aide spécifique à une commande.

<img width="1504" height="647" alt="image" src="https://github.com/user-attachments/assets/883df395-a055-42a5-9fb8-1bc0139f77d8" />

* `history` → affiche les commandes précédemment exécutées.

<img width="1255" height="1152" alt="image" src="https://github.com/user-attachments/assets/f542b11b-d3a9-4cf2-9906-907ad75171e3" />

---

## 🗂️ Contexte dans Metasploit

* **Chaque module possède son propre contexte.**
* Exemple :

  ```bash
  use exploit/windows/smb/ms17_010_eternalblue
  ```

  L’invite devient :

  ```
  msf6 exploit(windows/smb/ms17_010_eternalblue) >
  ```
* Les paramètres (comme `RHOSTS`) définis dans un module ne sont **pas conservés** si l’on change de module, sauf s’ils sont définis globalement avec :

  ```bash
  set -g RHOSTS <ip>
  ```

🔑 **Résumé :**

* Les options doivent être reconfigurées à chaque changement de module sauf si elles sont globales.
* Les commandes Linux (`ls`, `ping`, …) restent utilisables même dans un module.
* On ne “rentre” pas dans un dossier, on change uniquement de **contexte**.

<img width="2853" height="1369" alt="image" src="https://github.com/user-attachments/assets/e230957d-1612-431e-86fa-ebe0c91ae7d6" />

---

## ⚙️ Commande `show`

* `show options` → affiche les paramètres requis par le module en cours.

  * Exemple exploit (EternalBlue) → `RHOSTS`, `RPORT`
  * Exemple post-exploitation → peut nécessiter un `SESSION ID`

* `show payloads` → affiche les payloads compatibles avec le module.

* `show` sans contexte → liste **tous** les modules disponibles (`exploit`, `auxiliary`, `payload`, `post`, etc.).

🔑 **Résumé :**
La commande `show` est essentielle pour comprendre :

* les options à configurer
* les payloads utilisables
  Elle s’adapte au **contexte du module**.

<img width="2867" height="1068" alt="image" src="https://github.com/user-attachments/assets/a4b7c043-b015-4837-ac8e-c0ce972babb6" />

<img width="2742" height="919" alt="image" src="https://github.com/user-attachments/assets/4734344b-2ebc-44d6-b7e5-e72225edee7b" />

---

## ℹ️ Commande `info`

* Fournit des **informations détaillées** sur un module spécifique :

  * Auteur
  * Plateformes concernées
  * Options obligatoires
  * Références (CVE, MS, GitHub…)

* Utilisable :

  * Dans le **contexte** du module
  * Directement depuis `msfconsole` avec le chemin du module :

    ```bash
    info exploit/windows/smb/ms17_010_eternalblue
    ```

<img width="2790" height="1332" alt="image" src="https://github.com/user-attachments/assets/5c6c25ae-d6a5-4bb3-b427-9f10bdccfdfd" />

---

## 🔙 Commande `back`

* Permet de **sortir du contexte** d’un module et revenir à :

  ```
  msf6 >
  ```

<img width="1261" height="348" alt="image" src="https://github.com/user-attachments/assets/00260faf-c827-48e7-90d0-3730327fb8c7" />

---

## 🔎 Commande `search`

Permet de rechercher des modules disponibles dans la base Metasploit.

* Recherche possible par :

  * CVE → `search cve:2017-0144`
  * Nom d’exploit → `search eternalblue`, `search heartbleed`
  * Système cible → `search windows smb`

### Résultats de `search` :

* `#` → index utilisable avec `use` (ex. `use 0`)
* `Name` → type + catégorie du module (ex. `exploit/windows/smb/...`)
* `Disclosure Date` → date de publication de la vulnérabilité
* `Rank` → fiabilité du module

<img width="2848" height="1159" alt="image" src="https://github.com/user-attachments/assets/171664b9-33fe-4ef8-8a25-19db5f3868a6" />

<img width="2823" height="1207" alt="image" src="https://github.com/user-attachments/assets/7220a5e6-db8d-436b-943c-3ded079cc0dd" />

---

## 📊 Classement des Exploits (`Rank`)

Chaque exploit est évalué en fonction de sa **fiabilité**.

| Rank          | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| **Excellent** | Très fiable, fonctionne presque toujours sans crash          |
| **Great**     | Fiable dans la majorité des cas, faible risque d’instabilité |
| **Good**      | Généralement stable mais peut échouer selon la config        |
| **Average**   | Moyennement fiable, succès pas garanti                       |
| **Normal**    | Peu fiable                                                   |
| **Manual**    | Nécessite une intervention ou configuration manuelle         |

<img width="909" height="450" alt="image" src="https://github.com/user-attachments/assets/4e7e859f-eb8c-420e-8bf2-25e15ea164e3" />

---

## 👤 Auteurs des modules

Exemple avec `auxiliary/scanner/ssh/ssh_login` :

<img width="2194" height="385" alt="image" src="https://github.com/user-attachments/assets/24fdb56f-8aac-4ad5-be38-dd90ab041a99" />

---

# ✅ Résumé

* `msfconsole` → lance l’interface
* `help` → liste ou détaille les commandes
* `use` → change de module (nouveau contexte)
* `set` / `set -g` → configure les options locales ou globales
* `show` → affiche les options, payloads ou modules
* `info` → détails complets d’un module
* `back` → retour au prompt principal
* `search` → rechercher un module par CVE, nom ou type
* `Rank` → fiabilité de l’exploit

---

```
