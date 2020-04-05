vi theme-colors.less 
vi email-frame.less 
f
k
doc
cd apps/
l
rm Kushan_Ratnayake_Resume.pdf 
l
k
vi template.log 
l
vi template.log 
l
cd moderncv/
l
..
k
l
vi template.log 
mv template.tex moderncv
k
l
mv publications.bib moderncv
k
l
cd moderncv/
k
l
k
vi template.log 
k
l
k
l
vi template.log 
l
k
l
vi template.log 
k
vi template.log 
sudo apt-get install latex-xcolor
k
l
vi template.log 
k
l
k
l
vi template.log 
k
vi template.log 
sudo apt-get update rubber
tlmgr update --all
rubber
rubber update
rubber -update
k
l
pdflatex template.tex 
k
l
evince template.pdf 
k
..
k
..
l
cp jhu-thesis-template/moderncv/template.tex .
k
l
vi template.tex 
k
l
k
pdflatex template.tex 
k
l
k
pdflatex template.tex 
sudo apt-cache search marvosym
sudo apt-cache search xcolor
sudo apt-cache search moderncv
sudo apt-get install texlive-latex-extra
k
l
sudo apt-get install pdflatex-moderncv
sudo apt-get install latex-moderncv
sudo apt-get install texlive-moderncv
k
pdflatex template.tex 
k
l
sudo apt-cache search fontawesome
sudo apt-get install texlive-fonts-extra
k
pdflatex template.tex 
k
l
evince template.pdf 
k
l
vi Kushan_Ratnayake_Resume.pdf 
rm Kushan_Ratnayake_Resume.pdf 
mv template.pdf Kushan_Ratnayake_Resume.pdf
k
l
cp Kushan_Ratnayake_Resume.pdf ~/Documents/apps/
k
cd
rubber
rubber --version
rubber
rubber upgrade
pdflatex
k
l
sgd
vi group_modules.py 
l
vi get_s_subgroups.py 
br
ba
sk
k
man grep
pacmd list-sinks|awk '/index:/ {print $0} /name:/ {print $0};'
pacmd list-sinks | grep '/index:/ {print $0} /name:/ {print $0};'
pacmd list-cards
k
pacmd list-sinks
pacmd list-sinks | grep 'index:'
k
pacmd list-cards | grep 'index:*bluez*'
pacmd list-cards | grep 'index:.*bluez.*'
pacmd list-sinks | grep 'index:.*bluez.*'
pacmd list-sinks | grep 'bluez'
pacmd list-sinks
k
l
jj
k


pacmd list-sinks | grep '/index:/ {print $0} /name:/ {print $0};'
pacmd list-sinks|awk '/index:/ {print $0} /name:/ {print $0};'
pacmd list-sinks | awk '/index:/ {print $0} /name:/ {print $0};'
k
pacmd list-sinks | awk '/index:/ {print $0} /name:/ {print $0};'
pacmd list-sinks | grep '/index:/ *** /name:/ **;'
pacmd list-sinks | grep '/index:/ ** /name:/ **;'
pacmd list-sinks | grep '/index:/ '
pacmd list-sinks | grep 'index: '
pacmd list-sinks | grep 'index: [1-100]'
pacmd list-sinks | grep 'index: [1-100] name: '
pacmd list-cards | grep -B 1 bluez
$(pacmd list-cards | grep -B 1 bluez):10:2
SINK=$( pacmd list-cards | grep -B 1 bluez )
$SINK
echo $SINK
k
l
k
pacmd list-cards
k
pacmd list-cards
k
SINK=$( pacmd list-cards | grep -B 1 bluez )
INDEX=${SINK:10:2}
echo $INDEX
echo $SINK
k
pacmd list-cards | grep '<a2dp_sink>'
sink=$(pacmd list-cards | grep '<a2dp_sink>')
echo $sink
if $sink; then echo 'yay'; fi
if $sink; then echo yay; fi
$sink
if ${sink}; ; then echo 'yay'; fi
if [ -z $sink ]; then echo 'yay'; fi
if [ -z "$sink" ]; then echo 'yay'; fi
if [ "$sink" ]; then echo 'yay'; fi
k
l
..
sgd
k
l
cd tex
l
cd jhu-thesis-template/
l
k
l
rm Kushan_Resume_Updated.pdf 
make clean
k
l
evince PhD_Thesis.pdf 
k
l
k
l
k
l
cd results/
l
..
cd results/
cd table/
l
vi t2.tex 
..
l
cd table/
vi t1.tex 
..
k
l
..
k
l
cd committee/
l
vi committee.tex 
k
l
..
l
evince moderncv-2015.pdf 
k
cd
k
sudo pip3 install sphinxcontrib-asyncio
k
sudo -H pip3 install sphinxcontrib-asyncio
k
sudo pip3 install --upgrade pip setuptools
k
sudo pip3 install sphinxcontrib-asyncio
k
bt
k
D
k
sudo pip3 install sphinx.ext.imgmath
k
l
vi setup.py 
k
l
k
.
k
l
.
..
k
l
cd sgt-py/
k
l
gaa
gcm "getting asyncio to work"
gph
k
l
..
k
l
cd sgt-py/
l
vi setup.py 
cd docs/
k
l
vi requirements.txt 
vi setup.py 
make html
k
..
k
l
vi results.py 
k
l
k
l
vi group_modules_sym.py 
k
l
k
l
gcm "asyncio"
gs
gph
k
l
k
gs
gaa
gs
k
l
gcm "import asyncio working, testing async function def"
gph
k
l
gs
gaa
gcm "forgot to update index.rst"
gph
k
l
cd matrices/
k
l
vi matrices_19.dat 
k
..
k
l
cd s_matrices/
l
cd normal/
l
k
..
k
l
..
k
l
kl
k
l
k
l
k
l
k
gaa
gcm "async def"
gph
gaa
gcm "async def"
gph
bt
ba
k
s
ba
gs
gss
ba
gl
gld
k
gl
47641b5
k
gs
gaa
gcm "async def finally working"
gph
k
gs
gaa
gcm "dl ext"
gph
k
sudo pip3 install sphinx-ext-imgmath
sudo pip3 install sphinx-imgmath
sudo pip3 install sphinx.imgmath
k
sudo pip3 install sphinx.ext.imgmath
sudo pip3 install imgmath
k
l
cd
doc
cd apps/
l
vi template.tex 
k
htop
vi cover_letter_5.tex 
mv template.pdf Kushan_Ratnayake_WeRide_Resume.pdf
k
l
mkdir WeRide
mv Kushan_Ratnayake_WeRide_Resume.pdf WeRide/
cd WeRide/
l
k
l
mv Kushan_Ratnayake_WeRide_Resume.pdf Kushan_Ratnayake_Resume.pdf
l
mv Kushan_Ratnayake_Resume.pdf Resume.pdf
..
k
l
mkdir Samsung
vi template.tex 
rm Kushan_Ratnayake_Resume.pdf 
mv template.pdf Kushan_Ratnayake_Resume.pdf
k
sgt
gm
l
k
l
vi cover_letter_3.tex 
vi cover_letter_4.tex 
k
mv template.pdf Samsung/
cd Samsung/
k
l
mv template.pdf Samsung_Resume.pdf
..
l
mkdir viagogo
k
rmdir viagogo/
k
l
vi WeRide/
cd WeRide/
k
l
..
l
vi cover_letter_5.tex 
vi cover_letter_6.tex 
cd WeRide/
l
vi Resume.pdf 
evince Resume.pdf 
i
cd
l
cd SAPP/
l
vi abell_haywood_meeting_Nov_5th.txt 
k
l
cat abell_haywood_meeting_Nov_5th.txt > writing_sample.tex
vi writing_sample.tex 
k
cd
l
vi .profile 
k
l
sgt
k
l
vi results.py 
k
sgt
l
vi main.py 
k
i
k
i
k
i
sgt
gm
apps
k
l
mkdir NASA
vi template.tex 
sgd
l
cd tex/
l
cd jhu-thesis-template/
k
l
cd intro_chapter/
l
vi intro_chapter.tex 
k
sgt
l
cd dat_files/
l
k
i
..
k
i
k
i
k
i
k
i
k
i
k
i
k
i
k
i
k
i
k
i
k
i
gs
gaa
gs
gcm "reorganized space group classes, overloaded mul"
gph
k
gs
gaa
gcm "class doc"
gph
gs
gaa
gcm "class doc"
gph
k
gs
gaa
gcm "more docs"
gph
gs
gaa 
k
gcm "more docs"
gph
gcm "more docs"
gaa
gcm "more docs"
gaa
gs
gaa
gph
gs
gaa
gs
gaa
k
gs
gl
k
gs
gaa
gcm "new docs"
gph
k
gs
gaa
gcm "docs"
gph
gs
gaa
gcm "docs"
gph
k
gs
gaa
gcm "docs
"
gph
gs
gaa
gcm "docs"
gph
k
gs
gaa
gcm "docs"
gph
gs
gaa
gcm "docs"
gph
k
gs
gaa
gcm "docs"
gph
gs
gaa
gcm "docs"
gph
k
gs
gaa
gcm "docs"
gph
gs
k
l
vi .gitignore 
k
gs
gaa
gcm "code examples"
gph
gaa
gcm "code examples"
gph
k
gs
gaa
gcm "code examples"
gph
gaa
gcm "docs"
gph
k
gaa
gcm "code examples"
gph
gaa
gcm "code examples"
gph
k
gaa; gcm "example code;
gaa; gcm "example code"
gph
gaa; gcm "example code"
gph
k
gaa; gcm "example code"
gph
gaa; gcm "example code"
gph
gaa; gcm "example code"
gph
k
gaa; gcm "example code"
gph
gaa; gcm "example code"
gph
gaa; gcm "example code"
gph
k
gs
gaa; gcm "example code"
gph
k
gaa; gcm "more example code"
gph
gaa; gcm "more example code"
gph
gaa; gcm "more example code"
gph
gaa; gcm "example code;
k
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
gaa; gcm "more example code"
gph
k
gaa; gcm "more example code"
gph
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
k
gaa; gcm "more example code"; gph
gaa; gcm "readme" 
gph
k
sgt
gm
k
gs
gl
k
l
vi README.md 
l
cd matrices/
l
..
cd -
k
l
cat matrices_112.dat 
..
cd dat_files/
l
cat g_b_cosets 
k
l
cat g_b_cosets 
cat g_s_cosets 
k
cat g_b_cosets 
vi g_b_cosets 
cat g_b_cosets 
k
cat g_b_cosets 
..
l
cd tex/
l
vi sgroup_labels.tex 
k
l
..
k
cd dat_files/
l
cd symmorphic_cosets/
l
..
k
l
..
l
k
cat matrices/matrices_58.dat 
k
l test
vi test.dat 
cat test.dat
l
cd dat_files/
k
l
vi bieberbach_cosets/
k
l
k
cd bieberbach_cosets/
l
k
cat b144.dat 
vi b144.dat 
k
l
k
cat b144.dat 
cat ../../test.dat
k
l
sgt
l
k
cd dat_files/bieberbach_cosets/
l
..
cd symmorphic_cosets/
l
sgt
k
l
cat test.dat
k
rm test.dat 
cat test.dat
k
rm test.dat 
l
vi conf.py 
k
i
..
k
i
k
l
vi test.py 
cd docs/
vi conf.py 
k
sgt
k
l
k
l
k
l
l
sgd
l
vi notes.txt 
sgt
cd b_matrices/
l
cd normal/
l
k
..
k
l
..
k
l
cd -
l
cd no
cd normal/
l
kk
cd dat_files/
l
vi groups_to_decompose 
k
..
gm
cd dat_files/
l
cat decomp_list 
k
l
vi semi_decomposable.dat 
gm
l
..
gm
k
l
cd dat_files/
l
vi semi_decomposable.dat 
rm semi_decomposable.dat 
k
vi semi_decomposable.dat 
l
cd decomp/
l
cd stats/
l
vi non_semi_decomp_stats.txt 
vi non_semi_no_semi.txt 
vi no_table_entries.txt 
vi notes.txt 
i
k
i
k
vi main.sh 
./main.sh
cd dat_files/
l
..
vi main.sh
l
vi main.sh 
k
./main.sh 
vi main.sh 
./main.sh 
vi main.sh 
k
l
./main.sh 
vi main.sh 
k
vi main.sh 
k
./main.sh
k
./main.sh
k
./main.sh
k
./main.sh
k
./main.sh
k
vi dat_files/test_list 
k
.
k
./main.sh
k
k
l
cd decomp/
l
cd nested/
l
k
cat decomp_106 
..
l
..
l
cd tex
l
cd table_entries/
l
cat entry_106 
k
..
cd decomp/nested/
k
l
k
cat entry_106 
cat decomp_106 
k
l
cat *
k
wc -l *
l
cat dat_files/sgroups.dat 
k
i
k
l
vi test.py
vi test.py 
i
k
i
k
i
k
..
k
l
..
k
l
..
k
cd -
k
l
k
./main.sh 
vi main.sh 
k
./main.sh 
l
cd bash_scripts/
l
vi non_semi_decomp.sh 
..
k
i
vi test.sh
chmod 770 test.sh
k
./test.sh 
vi test.sh
./test.sh 3
./test.sh 4
./test.sh 5
k
./test.sh 1
./test.sh 2
vi test.sh
rm test.sh
k
i
k
vi test.py
vi main.sh
p
k
p
k
p
k
p
k
p
k
l
k
..
l
k
./main.sh 1
k
./main.sh 1
k
./main.sh 1
k
./main.sh 1
k
./main.sh 1
vi main.sh
k
./main.sh 3
k
vi main.sh 
./main.sh 4
k
vi main.sh
./main.sh 4
l
k
./main.sh 4
sgd
l
cd s_matrices/
l
cd normal
k
p
k
..
l
wc -l s_matrices_24.dat
wc -l s_matrices_24.dat_uniq 
k
vi main.sh
k
cd dat_files/
l
cat coset_file 
sgt
k
cd -
k
./main.sh 2
k
k
l
k
l
vi README.md 
cd decomp/
l
cd se
ls semidirect/
k
..
l
cd -
k
l
cd set
l
cat *
k
p
cd forward/
p
k
..
cd reverse/
p
k
p
k
p
k
p
k
l
p
k
p
pp
k
..
l
..
k
l
cd non_semidirect/
k
p
k
p
k
p
k
p
k
p
k
cat *
k
p
k
cd s_matrices/normal/
l
p
k
l
..
l
cd normal/
k
l
k
kk
..
cd dat_files/
l
k
./main.sh 2
k
p
k
l
k
./main.sh 2
k
./main 3
./main.sh 3
l
k
cd dat_files/
l
cd symmorphic_cosets/
k
l
cat *
k
p
k
l
..
cd s_matrices/normal/
k
l
vi s_17_normal.dat 
k
l
k
..
cd dat_files/
vi groups_remaining 
k
..
cd dat_files/
l
vi groups_remaining 
k
..
k
vi main.sh
k
./main.sh 2
cd s_matrices/
l
sgt
sgd
k
cd s_matrices/
l
ls | wc -l
k
p
ls > stats
vi stats 
l
k
..
l
vi move_decomps.sh 
vi semi_decomp.sh 
k
vi classify_s_groups.sh
k
l
chmod 770 classify_s_groups.sh 
l
k
vi classify_s_groups.py
k
sgt
k
./main.sh 2
l
k
..
cd s_matrices/
cd not_normal/
cat s_224_not_normal.dat 
k
..
k
l
cd not_normal/
vi s_226_not_normal.dat 
k
l
k
sgd
l
cd s_matrices/
l
k
mv normal normal_copy
mv not_normal not_normal_copy
l
k
mkdir normal
mkdir not_normal
l
k
..
cd s_matrices/
l
cd normal_copy/
l
..
k
l
k
i
l
k
..
vi main.py 
k
br
k
cd s_matrices/normal
l
..
l
cat s_matrices_106.dat
cat s_matrices_106.dat_uniq 
cat s_matrices_110.dat_uniq 
k
..
cd b_matrices/
l
cd normal/
l
cat b_106_normal.dat 
cat b_110_normal.dat 
..
cd not_normal/
cat b_106_not_normal.dat 
cat b_110_not_normal.dat 
k
sgt
k
cd decomp/
l
k
l
cd non_semidirect/
l
cat decomp_224
cat decomp_226
rm decomp_226
rm decomp_227
cat decomp_228
cat decomp_230
rm decomp_228
rm decomp_230
k
l
p
k
p
q
l
k
l
k
l
k
l
k
..
cd -
l
p
ik
k
l
p
k
./main.sh 2
l
k
..
k
./main.sh 2
./main.sh 4
k
./main.sh 4
k
./main.sh 2
./main.sh 4
sk
k
l
k
sk
vi emails
l
..
k
cd -
k
java -version
sudo apt-get update
k
sudo apt-get install default-jdk
k
java -version
sudo apt-get install scala
k
scala
k
sudo tar xvf Downloads/spark-2.4.1-bin-hadoop2.7.tgz -C /usr/local/spark
cd /usr/local/spark
l
dl
l
k
l
..
sudo tar xvf Downloads/spark-2.4.1-bin-hadoop2.7.tgz -C /usr/local/spark
k
l
k
l
sudo tar xvf Downloads/spark-2.4.1-bin-hadoop2.7.tgz -C /usr/local/
br
sp
k
conf
k
t
te
l
vi latex_test.tex 
l
apps
l
cd BaltimoreCorps/
k
l
vi short_answers.txt 
k
k
hs
k
h
sudo tar xvf Downloads/spark-2.4.1-bin-hadoop2.7.tgz -C /usr/local/spark
sudo tar xvf Downloads/spark-2.4.1-bin-hadoop2.7.tgz -C /usr/local/spark
ik
k
l
dl
l
k
java -jar escher.jar 
java -jar symmetry.jar 
java -jar fft.jar 
k
java -jar cellConverter.jar 
k
l
ls *.jar
k
l
ls
k
t
l
te
k
l
t
t check
t add check
t -h
t a df
t del df
k
l
cd Cannabis\ arrests\,\ citations\ and\ charges\,\ 2015-2017/
l
..
k
l
./searchImage 
k
dl
java -jar EscherMobile.jar 
java -jar escher.jar 
k
l
k
java -jar escher.jar 
ap
sk
java -jar escher.jar 
matlab
k
i
k
ap
sk
k
sk
cd
l
la
cat alumni.txt 
k
rm alumni.txt 
l
rm 'Screenshot from 2019-07-1*
rm 'Screenshot from 2019-07-11 17-14-38.png' 
rm 'Screenshot from 2019-07-11 17-14-53.png' 
rm 'Screenshot from 2019-07-12 10-52-57.png' 
l
k
l
la
vi .xinputrc 
vi .xprofile 
cd .kivy/
l
vi config.ini 
k
la
..
la
cd .kivy/
cd extensions/
l
..
cd icon/
l
..
cd mods/
l
cd
k
la
cd .gconf/
l
cd desktop/
l
cd gnome/
l
cd
k
la
cd fl
cd .fltk/
l
cd fltk.org/
l
cd fluid/
l
cd
k
l
k
la
cd .gconf/
l
..
cd .config/
l
k
l
la
k
la
cd enchant/
l
..
cd gthumb/
l
..
cd touchegg/
l
vi touchegg.conf 
k
sk
ap
sk
cd /
l
cd lost+found/
l
sudo cd lost+found/
su -u
k
l
sk
bt
ap
sk
k
pip3 list | grep pydicom
sudo apt-get update
k
t
te
l
k
l
mkdir DICOM
cd DICOM/
l
k
l
k
python3 -c "import skimage; print skimage.__version__"
python3 -c "import skimage; print(skimage.__version__)"
python --version
python3
k
l
sk
sudo apt-get update
k
ls
sudo apt update && sudo apt dist-upgrade && sudo apt autoremove
k
sudo apt install virtualbox-guest-dkms linux-headers-virtual
sudo restart
sudo reboot
ls
k
ls
cd
k
ls
k
ls
k
q
k
sudo dpkg-reconfigure sddm
sudo reboot
k
l
cd `
k
k
l
ls
sk
df
k
l
sdfasdfffdddddddddddddddddddddddddd
k
s
k
kkkkk
k
ls
k
abceasyas123
k
ytyping something to test the key repeat speed with
it's typing pretty fast

lol
not repeating too much
abceasyas123
abceasyas123
k
kushan
kushan ratnayake
ls
k
l
k
l
ls
k
ls
k
la
k
ls .themes
mkdir .themes
mkdir .icons
ls
dl
l
k
l
ks
k
l
k
pulseaudio
pulseaudio --start
pulseaudio
pavucontrol
k
sudo apt-get install xfce4-volumed 
k
xfce4-volumed 
xfce4-volumed --no-daemon
k
xfce4-volumed --no-daemon
killall xfce4-volumed && xfce4-volumed
killall xfce4-volumed 
xfce4-settings-editor 
pavu
pavucontrol
pulseaudio
xfce4-settings-editor 
cd /
k
l
cd
.
k
cd
k
l
k
l
la
./.fix_scroll.sh &
k
l
cd /usr/share/pixmaps/
l
ls *.png
cd
k
l
mv itunes.png /usr/share/pixmaps/
sudo mv itunes.png /usr/share/pixmaps/
k
sk
libinput-gestures-setup autostart
libinput-gestures
history | grep  fix
history | grep  scroll
./fix_scroll.sh &
ls .fix_scroll.sh 
./.fix_scroll.sh &
source .fix_scroll.sh &
k
la
k
htop
k
l
ls
k
sgt
k
ls
l
k
ls
k
l
la
gm
k
l
la
k
l
k
l
k
wmctrl -xa firefox
wmctrl -xa firefox || firefox
wmctrl -xa spotify || spotify
spotify
l
vi classify_s_subgroups.py 
vi get_subgroups.py 
k
ll
k
ll
dh
du
k
du -h
k
du
k
du -h
k
cat README.md 
cd  matrices/
l
..
cat s_matrices/
ls s_matrices/
cat decomp_224
cat g_b_cosets 
k
cat s_matrices/
ls s_matrices/
ls
l
cd s_matrices/
k
l
cat s_matrices_224.dat_uniq 
k
less s_matrices_224.dat_uniq 
k
l
k
l
ps
k
ps
k
l
k
l
k
htopp
k
htop
k
l
k
l
k
l
dh
du
k
du -h
k
du -h > disk_usage_report
vi disk_usage_report 
k
l
du
k
du -h
k
du -h | grep -v "git"
k
du -h
k
l
rm itunes.png 
k
sk
k
l
sgt
k
l
vi get_subgroups.py 
sgt
gm
vi get_subgroups.py 
l
htop
k
l
la
ls
k
l
cat main
k
htopp
htop
k
htopp
k
htop
k
d
l
htop
k
l
htop
k
htop
ps
du -hs
du -h
k
l
q
l
htop
k
p
pa
k
pa
ps
k
ps
l
ps
k
htop
k
ls
la
k
htop
k
n
no
notes
k
l
k
l
htop
k
l
ps
k
ps
k
ls
k
ls
k
sk
l
la
k
ls
k
l
ldk
dk
kl
sls
kakg
k
l
h
k
ls
aj
kjj g
l
sk
l
k
l
k
l
k
l
cdd
k
la
k
la
dl
mv flyr-pages-1.pdf ~/Desktop/
pdftk
sudo apt-get update
pdfjam
sudo apt-get install pdftk
k
pdftk
sudo apt install pdftk-java
sudo apt-get install pdftk-java
k
pdftk
k
desk
k
evince flyr-pages-1.pdf 
k
evince flyr-pages-1.pdf 
k
sk
k
l
sk
k
sk
la
sk
k
sk
j
kk
k
l
k
sk
k
sk
k
sk
gsettings
gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-up
gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-down
gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-mute
rv
k
br
k
tns
k
ls
br
k
br
k
br
k
rs
br
sk
br
sp
k
ls
ba
rv
sp
rv
br
rs
k
rs
k
cd .config
l
..
k
l
la
vi .xinputrc 
vi .xprofile 
k
l
la
vi .Xmodmap 
sp
vi .Xmodmap 
l
cd
k
la
vi .xinputrc 
vi .Xmodmap 
l
la
k
l
