#   _____           _   _          __        __
#  |  ___|   ___   | | | |  _   _  \ \      / /
#  | |_     / _ \  | |_| | | | | |  \ \ /\ / /
#  |  _|   | (_) | |  _  | | |_| |   \ V  V /
#  |_|      \___/  |_| |_|  \__,_|    \_/\_/
source <(clog Inc)
PROJECT=fohuw
bEXE="$PROJECT"
callingSCRIPT="${0##*/}"
vCodeType="hugo"

# A golang (& Hugo) module must have a "v" semver prefix. A website does not
vCODE=v$(clog Sh vCode)
bMSG=$( clog Sh bMSG)