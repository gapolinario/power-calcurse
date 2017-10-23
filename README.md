# power-calcurse
Added functionality to my calcurse todos and appointments

The whole idea is to sync my calendar through all devices, computers and phones.
Hence it is important to have data synced, through NextCloud or Dropbox

To open calcurse with a the calendar files from a specified folder, run

    calcurse -D path-to-folder

I added this as a system alias no my `~/.bash_aliases` file to quickly open calcurse as desired

All animals came from the [San Diego Zoo][zoo] list.

Notifications can sent to a [notifica][notifica] e-mail address.
Add the following line to your ~/.bashrc file:

    export notifica="[your token]@notify.moosa.it"

Where `[your token]` is provided by the Notifica app.

But this is going to send sensible information through an email client
we do not know, hence it is better to send messages using
a Python API, such as [Python Telegram Bot][python].

## State of things

I was fiddling with the first task, in addWeeklyTasks.sh file

[zoo]: http://animals.sandiegozoo.org/animals
[notifica]: http://www.moosa.it/notifica.php
[python]: https://python-telegram-bot.org/
