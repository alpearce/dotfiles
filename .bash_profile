export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PS1="\u:\w$ "

#----------
# PATH
#----------
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS
export PATH=$PATH:/Developer/llvm-svn/build/Debug+Asserts/bin
export PATH=$PATH:/Developer/android-ndk-r9:/Developer/android-sdk-macosx/tools:/Developer/android-sdk-macosx/platform-tools/Developer/vuforia-skd-android-2-6-10
export PATH=$PATH:/opt/local/share/java/maven3/bin/mvn
export PATH=$PATH:/usr/texbin

# for gencore
export INCLUDE_PATH=$INCLUDE_PATH:/opt/local/include:/usr/local/include:/usr/local/BerkeleyDB.6.0/bin
export C_INCLUDE_PATH=$INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$INCLUDE_PATH
export LIBRARY_PATH=$LIBRARY_PATH:/opt/local/lib:/usr/local/lib:/usr/local/BerkeleyDB.6.0/lib:/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/jre/lib/server/
export LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/jre/server/

#----------
# FUNCTIONS 
#----------

# grep and kill all processes containing the specified string
# input the string with [] around first char to avoid kill the grep process
# example: gkill [c]hrome
function gkill() {
	kill $(ps aux | grep $1 | awk '{print $2}')
}



# find something in the file system and redirect errors to /dev/null
function f() {
	find / -name $1 2>/dev/null
}

# update and re-open a tex file in one fell swoop
function texopen() {
	pdflatex $1.tex
	open $1.pdf
}

if [ -f ~/.bashrc ]; then
	source  ~/.bashrc
fi


##
# Your previous /Users/allie/.bash_profile file was backed up as /Users/allie/.bash_profile.macports-saved_2014-04-22_at_16:50:34
##

# MacPorts Installer addition on 2014-04-22_at_16:50:34: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
# Finished adapting your PATH environment variable for use with MacPorts.

