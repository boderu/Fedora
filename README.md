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
7. Alternatives Anwendungsmenü wählen
8. Erste Anwendungen installieren:
   - Bitwarden
   - Synology Drive
   - Nextcloud
9. Bitwarden einrichten und konfigurieren
10. Synology Drive konfigurieren und in den Autostart eintragen
11. Nach der Synchronisation '.mozilla.tar.gz' in das Home-Verzeichnis kopieren und entpacken
12. Hintergrundbild auf SynologyDrive/Config/Wallpaper.png ändern
13. Nextcloud einrichten
