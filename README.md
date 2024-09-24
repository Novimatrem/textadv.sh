# textadv.sh

# Platforms it does and doesn't run on

Windows ✅
Linux ✅
Haiku ✅

Mac ❌ (no, unfixable non-textadv.sh related bug in all terminals dev could use) [no terminals render ANSI escape codes which i rely on]

BSD ❌ (no, OS non-daily-drivable for dev) [does not include some libraries i'd need in my day to day]

ReactOS ❌ (no, OS bluescreens for dev) [alpha software]

The game officially runs on Windows 10, Linux, & Haiku.

If you have an operating system that isn't any of those, it could work, but you're on your own for getting it set up, and it may not function properly at all. Beware. 

# how to (win10)

Game is only tested on the latest versions of Windows 10 and depends on it.

It requires Windows 10 build 17063 or later.

Run the following commands inside of Git Bash in order to download and start the game.

Required dependencies are: Git Bash (https://github.com/git-for-windows/git/releases), and Microsoft's modern 'Windows Terminal' (from the Microsoft Store, unless you are using LTSC, where the game has a launcher to download that Terminal for you.)

```git clone https://gitlab.com/Novimatrem/textadv.sh```

```cd textadv.sh```

```cmd "/C run-win-zoey.bat"```

(OR if you are on LTSC, this command instead:)

```cmd "/C run-win-LTSC-enterprise.bat"```

# how to (linux)

Run the following commands inside of your bash terminal emulator in order to download and start the game.

Required dependencies are: Bash, and a Terminal Emulator.

```git clone https://gitlab.com/Novimatrem/textadv.sh```

```cd textadv.sh```

```bash textadv.sh```

# how to (haiku)

Run the following commands inside of 'Terminal' in order, to download and start the game.

Required dependencies are: bash, git. You can make sure you have them by searching for them in HaikuDepot. (look for Status: Active on them)

```bash```

```git clone https://gitlab.com/Novimatrem/textadv.sh```

```cd textadv.sh```

```bash textadv.sh```

# The game has an updater. To update the game to the latest version, simply run the following command when in-game: dev update
