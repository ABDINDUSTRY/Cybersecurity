📌 Metasploit Framework – Résumé

Le Metasploit Framework est un outil puissant pour le pentesting et l’exploitation de vulnérabilités.
Son interface principale est le msfconsole, permettant d’interagir avec différents modules spécialisés.

🔑 Concepts de base

Vulnérabilité : faille de conception, de code ou de logique.

Exploit : code qui tire parti d’une vulnérabilité.

Payload : charge utile exécutée sur la cible (ex. ouvrir un shell).

⚙️ Types de modules

Auxiliary : outils de support (scanners, crawlers, fuzzers).

Encoders : encodage pour contourner certains antivirus.

Evasion : techniques d’évasion pour éviter la détection.

Exploits : codes classés par OS/plateforme pour exploiter des failles.

NOPs : instructions “no operation”, utilisées comme remplissage.

Payloads :

Singles → charges utiles autonomes.

Stagers → créent un canal de communication.

Stages → téléchargés via le stager (payload plus lourd).

Adapters → conversion de payloads (ex. Powershell).

Post : modules de post-exploitation (collecte d’infos, persistance, etc.).
