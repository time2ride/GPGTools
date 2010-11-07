#!/bin/sh
tempdir=/private/tmp/GPGMail_Installation

mkdir -p "$HOME/Library/Mail/Bundles"
# The installer has to make sure, that the "GPGMail.mailbundle" is installed in $tempdir
mv "$tempdir/GPGMail.mailbundle" "$HOME/Library/Mail/Bundles/"

# cleanup tempdir "rm -d" deletes the temporary installation dir only if empty.
# that is correct because if eg. /tmp is you install dir, there can be other stuff
# in there that should not be deleted
rm -d "$tempdir"

# enable bundles in Mail
defaults write com.apple.mail EnableBundles -bool YES 
defaults write com.apple.mail BundleCompatibilityVersion -int 3 
