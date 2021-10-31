# JamF-Daemon-Quitter

In July 2020, I noticed my laptop battery would rapidly deteriorate for no apparent reason. Using Activity Monitor, I diagnosed the issue as a process running called "Jamf Daemon" - part of the software used by my school to manage student laptops, and which was using ">100%" of the CPU at any given time. I went to the ICT, but their only solution was updating the computer to the newest MacOS - something I wasn't prepared to do as it would cease access to 32-bit appications.

Instead, I decided I would try fix the problem myself. After some testing, I noticed this process would start after the laptop wakes from sleep. Using the "sleepwatcher" external library, I wrote a bash script which would also launch after the computer woke from sleep, identify the process ID of the daemon, and terminate it. This succeeded in fixing the issue and I no longer had to worry about severely impeded performance.
