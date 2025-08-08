Schema – Release (GitHub Pages + auto-DB)
========================================

Den här mappen är redo att laddas upp till GitHub Pages.
Nycklar:
- HTTPS-PWA
- Auto-öppning av "rätt databas" via:
  (A) Alias i URL eller config.json -> binder till vald fil första gången -> öppnas automatiskt framöver.
  (B) PWA File Handling: dubbelklicka *.schema.json i Windows och öppna med den installerade appen.

Snabbstart
----------
1) Ladda upp alla filer i denna mapp till ett GitHub-repo (roten). Settings → Pages → Source: main, Folder: /(root).
2) Öppna din Pages-URL (https://<user>.github.io/<repo>/). Installera som app om du vill.
3) Ställ in default alias i config.json (t.ex. "SmagruppA") ELLER använd URL:en med ?db=SmagruppA
4) Första gången: appen ber dig välja databasfil (helst med filändelsen .schema.json) i OneDrive.
   Därefter öppnas samma fil automatiskt varje gång för det aliaset.

Auto-DB via alias
-----------------
- Sätt i config.json: { "defaultDbAlias": "SmagruppA" }
- eller öppna URL:  https://<user>.github.io/<repo>/?db=SmagruppA
- När filen väljs första gången lagras fil-handtaget säkert i webbläsaren och binds till aliaset.
- Nästa gång: öppnas direkt utan fråga.

File Handling (dubbelklick på fil)
----------------------------------
- När appen är installerad som PWA registreras den för *.schema.json.
- Byt namn på din databasfil till t.ex. schema.schema.json.
- Högerklicka filen → Öppna med → välj appen (första gången). Sen kan du öppna filen direkt.

Lösenord (valfritt)
-------------------
- Klicka "Lösenord" i appen för att kryptera/dekryptera databasen (AES‑GCM + PBKDF2).
- Export/Import respekterar om filen är krypterad.

OneDrive & samtidiga ändringar
------------------------------
- Filen ligger i en delad OneDrive-mapp. Undvik samtidiga stora ändringar.
- Använd Export som backup ibland. Tryck "Spara" och "Ladda om" vid behov.

Genvägsskapare
--------------
- Kör Make-Desktop-Shortcut.ps1. Den frågar efter din Pages-URL och alias, och lägger en genväg på skrivbordet.
