# power-calcurse
Added functionality to my calcurse todos and appointments

The whole idea is to sync my calendar through all devices, computers and phones.
Hence it is important to have data synced, through NextCloud or Dropbox

To open calcurse with a specified calendar file, run

    calcurse -c path-to-file

All animals came from the [San Diego Zoo][zoo] list.

All notifications are sent to a [notifica][notifica] e-mail address.
Add the following line to your ~/.bashrc file:

    export notifica="[your token]@notify.moosa.it"

Where `[your token]` is provided by the Notifica app.

## State of things

I was fiddling with the first task, in addWeeklyTasks.sh file

[zoo]: http://animals.sandiegozoo.org/animals
[notifica]: http://www.moosa.it/notifica.php
