#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project .
#-------------------------------------------

/usr/lib/qflow/scripts/synthesize.sh . alu_4bit alu.v || exit 1
# /usr/lib/qflow/scripts/placement.sh -d . alu_4bit || exit 1
# /usr/lib/qflow/scripts/opensta.sh  . alu_4bit || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a . alu_4bit || exit 1
# /usr/lib/qflow/scripts/router.sh . alu_4bit || exit 1
# /usr/lib/qflow/scripts/opensta.sh  -d . alu_4bit || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a -d . alu_4bit || exit 1
# /usr/lib/qflow/scripts/migrate.sh . alu_4bit || exit 1
# /usr/lib/qflow/scripts/drc.sh . alu_4bit || exit 1
# /usr/lib/qflow/scripts/lvs.sh . alu_4bit || exit 1
# /usr/lib/qflow/scripts/gdsii.sh . alu_4bit || exit 1
# /usr/lib/qflow/scripts/cleanup.sh . alu_4bit || exit 1
# /usr/lib/qflow/scripts/display.sh . alu_4bit || exit 1
