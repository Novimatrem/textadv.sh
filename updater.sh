#!/bin/bash
# updater.sh v30
# Please run the updater from in-game with the command: dev update

# This product is licensed under the GNU GPL v3.0.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License (v3.0) for more details.
# You should have received a copy of the GNU General Public License along with
# this program.  If not, see https://www.gnu.org/licenses/gpl-3.0.en.html.
# THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
# APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS
# AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND,
# EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE
# RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE
# PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
# REPAIR OR CORRECTION.

if [ "$UPDATESEQUENCE" = "" ]; then
clear
echo "Please run the updater from in-game with the command: dev update"
UPDATESEQUENCE=0
export UPDATESEQUENCE=0
exit
fi

if [ "$UPDATESEQUENCE" = "0" ]; then
clear
echo "Please run the updater from in-game with the command: dev update"
UPDATESEQUENCE=0
export UPDATESEQUENCE=0
exit
fi

if [ "$UPDATESEQUENCE" = "1" ]; then
echo "We are updating now."
echo ""
cd "$(dirname "$0")"

# Yes, I'm doing this like this, programmer friend. I'm being very careful. Purposefully.

# duki nuki
cd "$(dirname "$0")"
echo "Working..."
rm -rf bag-art-convert.sh
rm -rf edit-script-haiku.sh
rm -rf get-command-listing.sh
rm -rf gpgf.sh
rm -rf oldbagart-origver.txt
rm -rf oldbagart.txt
rm -rf open-dir-haiku.sh
rm -rf README.md
rm -rf run-win-LTSC-enterprise.bat
rm -rf run-win-zoey.bat
rm -rf start.sh
rm -rf textadv.sh
rm -rf updater.sh
rm -rf ../update-process
# /duki nuki

# download
cd ..
mkdir update-process
cd update-process
git clone https://gitlab.com/Novimatrem/textadv.sh
cd textadv.sh
unalias cp

# HERE IS THE WRITE

yes | cp -rf bag-art-convert.sh ../../textadv.sh/bag-art-convert.sh
yes | cp -rf edit-script-haiku.sh ../../textadv.sh/edit-script-haiku.sh
yes | cp -rf get-command-listing.sh ../../textadv.sh/get-command-listing.sh
yes | cp -rf gpgf.sh ../../textadv.sh/gpgf.sh
yes | cp -rf oldbagart-origver.txt ../../textadv.sh/oldbagart-origver.txt
yes | cp -rf oldbagart.txt ../../textadv.sh/oldbagart.txt
yes | cp -rf open-dir-haiku.sh ../../textadv.sh/open-dir-haiku.sh
yes | cp -rf README.md ../../textadv.sh/README.md
yes | cp -rf run-win-LTSC-enterprise.bat ../../textadv.sh/run-win-LTSC-enterprise.bat
yes | cp -rf run-win-zoey.bat ../../textadv.sh/run-win-zoey.bat
yes | cp -rf start.sh ../../textadv.sh/start.sh
yes | cp -rf ./textadv.sh ../../textadv.sh/textadv.sh
yes | cp -rf updater.sh ../../textadv.sh/updater.sh

# /HERE IS THE WRITE

cd ..
cd ..
rm -rf update-process



echo ""
echo "Done. Start the game again, it's the newest version now."
fi

# Cleanup and finish.
UPDATESEQUENCE=0
export UPDATESEQUENCE=0
exit

# EOF

