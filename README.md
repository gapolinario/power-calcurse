# power-calcurse
Added functionality to my calcurse todos and appointments

The whole idea is to sync my calendar through all devices, computers and phones.
Hence it is important to have data synced, through NextCloud or Dropbox

To open calcurse with a the calendar files from a specified folder, run

    calcurse -D path-to-folder

I added this as a system alias no my `~/.bash_aliases` file to quickly open calcurse as desired

All animals came from the [San Diego Zoo][zoo] list.

All messages and notifications are sent through the [power-calcurse-bot][bot],
made with the help of [Python Telegram Bot][python].

## Add Weekly Tasks

With `bash addWeeklyTasks.sh`, all tasks written
in the `weekly` file are added to the appointments file, `apts`.

## Remove Weekly Tasks For a Period

Started

## Add Monthly Tasks

Not done

## Add Yearly Special Dates

Not done

## Add Task From Telegram

Not done
This supposes the Bot is awake and running on a distant server

## State of things

Now fiddling with the rmWeeklyTasks functionality

[zoo]: http://animals.sandiegozoo.org/animals
[bot]: http://t.me/power_calcurse_bot
