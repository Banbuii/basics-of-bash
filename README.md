# Bash Basics Vortrag

## Router

Ist gerade der TP-LINK AC1750 aus dem Raum A 330, da der andere nicht auffindbar war.

Login: `root:honeypotap`

Interface erreichbar unter IP: `192.168.1.1`

### WIFI

`BashBasicsBroadcast:bootebooteboote`

## Server

Router hat einen DNS-Server!
Erreichbar unter `@basics-of-bash` oder IP: `@192.168.1.224`
(Die IP ist für MAC: `90:FB:A6:E6:54:B9` reserviert)

Config: TODO

### Logins

#### Admins

- `admin_0:finfcat.ist.beste.cat`
- `admin_1:honeypot.ist.beste.pot`
- `admin_2:fachrat.ist.beste.rat`
- `root:langlebederfachrat`

#### Users

Username ist jeweils das Passwort: `hero_xxx:hero_xxx`

## Handy Commands

`tail -f /var/log/wizzard/log1.log` folgt allen Eingaben, die der Wizzard ins Ohr geflüstert bekommt.

`watch -n 1 w` gibt eine Übersicht über die Aktivitäten aller eingeloggten User aus und aktualisiert sie einmal pro Sekunde. 

## Scripts

Alle Skripte erfordern root-Rechte

### generate_usage.sh

Hatte Ich benutzt, um die Auslastung zu testen. Ist WIP.

### add_users.sh und add_admins.sh

Legt die Konten an, setzt die Gruppen und Passwörter.

`add_users.sh` fragt erst nach der Anzahl und kopiert dann noch alles aus `./user_folder_template/` in die Homeverzeichnisse der User.
Legt außerdem eine `feedback.txt` in `/home/heroes/` an.

### delete_users.sh und delete_admins.sh

Löscht die alle User der jeweiligen Gruppen

### Der Wizzard

Enthält die Skripte für die Mechanik, mit der die User in die `wizzards_approval`-Gruppe aufgenommen werden.

`wizzard.service` lässt `wizzards_ear` als Service im Hintergrund laufen. Dieses legt eine FIFO-Pipe an und wartet dann am
lesenden Ende auf Input. Per `tell_wizzard <your_answer>` wird der eigene Username und die Antwort in die Pipe geschrieben.
Ist die Antwort richtig, wird der User in die Gruppe gesteckt und aus seiner Session geworfen.

### userfolder_template

Wie der Name schon sagt, ist das die Vorlage für die `/home`-Folder aller Heroes.

Barabara schreibt hier bald(TM) noch ein paar Worte zur Erklärung

### Baum mit 10 Usern (relevante Verzeichnisse)

``` bash
/
├── banner
│   └── banner.txt
└── home
    ├── admins
    │   ├── admin_0
    │   ├── admin_1
    │   ├── admin_2
    │   └── scripts
    │       ├── add_admins.sh
    │       ├── add_users.sh
    │       ├── delete_admins.sh
    │       ├── delete_users.sh
    │       ├── generate_usage.sh
    │       └── user_folder_template
    │           ├── test_folder
    │           └── test.txt
    └── heroes
        ├── feedback.txt
        ├── hero_000
        │   ├── test_folder
        │   └── test.txt
        .
        .
        .
        └── hero_009
            ├── test_folder
            └── test.txt
```

### Custom MOTD für die User

- In `/banner/banner.txt`
- `~/.hushlogin` verhindert das Anzeigen der normalen MOTD für User
- `cat /banner/banner.txt` am Ende der `~/.bashrc` zeigt dann das Banner

## Pad

[Pad](https://pad.finf.uni-hannover.de/sArjdD_oSz-JRfsfYHs7dg#)
