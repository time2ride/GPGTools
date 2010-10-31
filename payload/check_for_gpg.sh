#!/bin/sh

# this skript returns 0 if either gpg or gpg2 is installed on the system

if( which -s gpg ) then
	exit 0;
fi
if( which -s gpg2 ) then
	exit 0;
fi
exit 1;