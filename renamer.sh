#!/bin/bash

######
exit 0
######

# copy 01 into 02
while read fNameDonor ; do
    fNameAcceptor="$( sed "s/01_/02_icon_/" <<< "${fNameDonor}" )"
    cp "${fNameDonor}" "${fNameAcceptor}"
done <<< "$( find . -name "01*svg" )"

# copy 02 into files to be used as icons
while read fNameDonor ; do
    fNameAcceptor="$( sed "s/02_icon_//" <<< "${fNameDonor}" )"
    cp "${fNameDonor}" "${fNameAcceptor}"
done <<< "$( find . -name "02_icon_*svg" )"
