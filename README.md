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

## Edit Tasks of Today

Added the following line to my `~/.bashrc` file:

    alias today="vim apts +$(grep -n $(date +%m/%d/%Y) apts | head -n1 | awk -F ":" '{print $1}')"

From the calendar folder, I can run `today` and it takes me directly to
the scheduled appointments for today.

If there is no appointment for the day, I don't know what this does.

## Add Weekly Tasks

With `bash addWeeklyTasks.sh`, all tasks written
in the `weekly` file are added to the appointments file, `apts`.

Call it with a start and end date, for instance:

    bash addWeeklyTasks.sh 2017-11-08 2017-12-12

## Remove Weekly Tasks For a Period

Partially implemented

Call it with a start and end date, though the formatting is a little different
from AddWeeklyTasks

    bash rmWeeklyTasks.sh 11/09/2017 11/13/2017
    
This scans the whole list, maybe it is not the optimal way of
doing this task.

It also does not change the original file, so far, this only prints to the command line.

## Add Monthly Tasks

Not done

## Add Yearly Special Dates

Not done

## Display Tasks of Today/Week at Telegram

Pretty printed, please

## Add Task From Telegram

Not done
This supposes the Bot is awake and running on a distant server

## Remove Task from Telegram

## State of things

Now fiddling with the rmWeeklyTasks functionality

[zoo]: http://animals.sandiegozoo.org/animals
[bot]: http://t.me/power_calcurse_bot
[python]: https://python-telegram-bot.org/
