<img width="1280" height="688" alt="image" src="https://github.com/user-attachments/assets/6ce64af2-cac0-4011-a4be-e440753c97b1" />



Le **Metasploit Framework** est un outil essentiel en **pentesting** et en **exploitation de vulnérabilités**.
Son interface principale, **msfconsole**, permet d’interagir avec une large variété de modules spécialisés.

---

🔑 **Concepts de base**

* **Vulnérabilité** : faille de conception, de code ou de logique.
* **Exploit** : code qui tire parti d’une vulnérabilité.
* **Payload** : charge utile exécutée sur la cible (ex. ouvrir un shell).

---

⚙️ **Types de modules**

* **Auxiliary** : outils de support (scanners, crawlers, fuzzers).
* **Encoders** : encodage pour contourner certains antivirus.
* **Evasion** : techniques pour éviter la détection.
* **Exploits** : codes d’exploitation classés par OS/plateforme.
* **NOPs** : instructions *no operation*, utilisées comme remplissage.
* **Payloads** :

  * **Singles** → charges utiles autonomes.
  * **Stagers** → créent un canal de communication.
  * **Stages** → téléchargés via le stager (payload plus lourd).
  * **Adapters** → conversion de payloads (ex. PowerShell).
* **Post** : modules de post-exploitation (collecte d’infos, persistance, etc.).
