# Fedora
Persönliche Konfiguration von Fedora KDE Plasma.

## Erste Schritte nach der Installation
1. Update durchführen und Neustart
2. In Discover Flathub freischalten
3. In den Einstellungen:
   - Touchpad:             Klicken durch Tippen abschalten
   - Touchpad:             Laufrichtung umschalten
   - Touchpad:             An beliebiger Stelle mit zwei Fingern tippen
   - Anzeige & Bildschirm: Skalierung einstellen
   - Text & Schriftarten:  Textgröße anpassen
   - Bildschirmsperre:     abschalten
   - Energieverwaltung:    anpassen (Netzkabel/Akku/geringer Ladezustand)
   - Fensterverwaltung:    Virtuelle Arbeitsflächen einrichten (4 x 2)
4. Darkly installieren (github.com/Bali10050/Darkly)
   ``` bash
   sudo dnf copr enable deltacopy/darkly
   sudo dnf install darkly
   ```
   - Farben & Designs/Farben: Darkly, Akzentfarbe Grau
   - Farben & Designs/Plasma-Stil: Darkly
   - Farben & Designs/Fensterdekoration: Darkly
   - Farben & Designs/Symbole: Papirus-Dark (grey)
   - Farben & Designs/Zeiger: Future cursors von Night
6. 'Fensterleiste nur mit Symbolen' auf 'Fensterleiste mit Symbolen und Text' ändern und konfigurieren
7. Taskleistenhöhe konfigurieren:
   - Höhe auf 48
   - Systemabschnitt der Kontrolleiste: Symbolgröße an die Höhe der Leiste anpassen
   - Energie und Akku: immer anzeigen
9. Alternatives Anwendungsmenü wählen
10. Konsole anpassen:
    - Fenstergröße speichern abwählen
    - Fenstertitel in der Titelleiste auswählen
    - neues Profil anlegen
       - Standardprofil einschalten
       - Terminalgröße 140 x 38
    - Bildlaufleiste/Verlauf: auf 10000 erhöhen
12. Erste Anwendungen installieren:
   - Bitwarden
   - Synology Drive
   - Nextcloud
11. Bitwarden einrichten und konfigurieren
12. Synology Drive konfigurieren und in den Autostart eintragen
13. Nach der Synchronisation '.mozilla.tar.gz' in das Home-Verzeichnis kopieren und entpacken
14. Hintergrundbild auf SynologyDrive/Config/Wallpaper.png ändern
15. Nextcloud einrichten
