#!/bin/bash																		#
#===============================================================================#
# HEADER																		#
#===============================================================================#
# SCRIPT:		NAME_of_SCRIPT													#
# AUTHOR:		Paul Spencer													#
# DATE:			DATE_of_CREATION												#
# COPYRIGHT:	Copyright (c) Paul Spencer		 								#
# LICENCE:		MIT License														#
#																				#
# PURPOSE: Give a clear, and if necessary, long, description of the				#
#          purpose of the shell script. This will also help you stay			#
#          focused on the task at hand.											#
#																				#
#===============================================================================#
# HISTORY																		#
#===============================================================================#
#	Date		Author	Description												#
# 	2017/05/15	PDS		Script creation 										#
# 																				#
#===============================================================================#
# USAGE																			#
#===============================================================================#
# Comment out if not needed														#
USAGE="This is the script usage"

if [ $# == 0 ] ; then
    echo $USAGE
    exit 1;
fi
#===============================================================================#
# END_OF_HEADER																	#
#===============================================================================#