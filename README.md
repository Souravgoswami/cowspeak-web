# cowspeak-web
stdouts quote of the day from brainyquote.com if there's an internet connection, or something random and perhaps funny from fortune.

**NOTE: THIS RUBY SCRIPT REQUIRES ncurses (for tput), AND IT IS WRITTEN ON LINUX, FOR LINUX. NO TEST WAS DONE ON OTHER OS.

**Documentation:**
Hi, my name is cowspeak-web. I speak a quote on your terminal. I can read quote of the day from brainyquote.com as well.
In that case, If there is no internet connection, then I tell a fortune quote.

Usage: Run me directly from the command line with ruby interpreter or with your shell, I will show you a fortune with no aruguments:
		1. ruby ./cowspeak-web
		2. chmod 777 ./cowspeak-web
	    	    ././cowspeak-web

Pass me some arguments:
	Available arguments are:
		--web or -w                      Show the quote of the day from brainyquote.com
		--text= or -t=                   Display a custom text.
		--file= or -f=                   Specify the ASCII file path to display your own ASCII art.
		--read or -r=                    Read a file.
		--help or -h                     Display this help.
		--documentation or -d            Display the whole documentation including this help.
		--art or -a                      Display a tutorial on adding your own art.
		--update or -u                   Update fortune database from Github.

		Examples:

			To get brainyquote.com's quote of the day:
				./cowspeak-web --web / ./cowspeak-web -w

			For custom text:
				cowspeak --text='text' / ./cowspeak-web -t='text'

			To display your own ASCII art:
				./cowspeak-web --file='path/file.art'

			To get brainyquote.com's quote of the day with custom art:
				./cowspeak-web --web --file=directory/file.art

			To display your own art with your text:
				./cowspeak-web --file=directory/file.art --text='your text'

			To read a file from the storage:
				./cowspeak-web --read='path/file.extension' or ./cowspeak-web -r='path/file.extension'

			NOTE: --web with --text, or -w with -t will only show quote from brainyquote.com, and not both.
					In the same way, --text with --read or -t with -r will not read the file, but show the custom text.
					Here's the priority of them, the higher the priority, the higher chances they are considered.

						Priority 1: web
						Priority 2: text
						Priority 3: read
	Help:
		./cowspeak-web -h or --help for a short help.
		./cowspeak-web --documentation or ./cowspeak-web -d for this documentation.

	Creating Custom Art:
		You can make your own art. Run ./cowspeak-web --art or ./cowspeak-web -a for more information.

	Update Fortune Database:
		This is just an extra feature. Update synchronizes your fortunes.data with https://raw.githubusercontent.com/bmc/fortunes/master/fortunes.
		You need not to update the database for months. It's fine if you never update the database. There are many fun inside the provided database.
		However, if the database gets deleted, run ./cowspeak-web --update or ./cowspeak-web -u. You can occasionally run an update - won't harm anything.
