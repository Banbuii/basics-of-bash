# Bash Basics Vortrag

## Router

<!-- Alter [Arris TG862](./Bedienungsanleitung_ArrisTG862AS.pdf) -->


Login: `admin:honeypotap` oder `root:honeypotap` (bin nicht mehr sicher)

Interface erreichbar unter IP: `192.168.1.1`

### WIFI

`BashBasicsBroadcast:bootebooteboote`

## Server

Router hat einen DNS-Server!
Erreichbar unter `@bash-basics` oder IP: `@192.168.1.10`
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
