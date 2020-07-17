#!/bin/bash
# 
# learn subnetting for CompTIA Network+ exam
# by creating random IP address and task to calculate subnet values
#
# random string: https://tldp.org/LDP/abs/html/randomvar.html
#
# @author: Jean-Christoph von Oertzen <jean@jeanchristophvonoertzen.com>
#
#
# set color constants for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


declare -a tasks=("${YELLOW}network address${NC} and ${YELLOW}broadcast address${NC}" "${YELLOW}network class${NC} and ${YELLOW}maximum hosts${NC}" "${YELLOW}first usable IP${NC} and ${YELLOW}last usable IP${NC}")
num_tasks=${#tasks[*]}

task=${tasks[$((RANDOM%num_tasks))]}


myip="`shuf -i 1-233 -n 1`.`shuf -i 0-255 -n 1`.`shuf -i 0-255 -n 1`.`shuf -i 0-255 -n 1`";
subnet="`shuf -i 8-32 -n 1`";

link="http://jodies.de/ipcalc?host=${myip}&mask1=${subnet}&mask2=";

echo ""
echo -e "${GREEN}
┌──────────────────────────────────────┐
│▜                                     │
│▐ ▞▀▖▝▀▖▙▀▖▛▀▖   for CompTia Network+ │
│▐ ▛▀ ▞▀▌▌  ▌ ▌                        │
│ ▘▝▀▘▝▀▘▘  ▘ ▘                        │
│           ▌        ▐  ▐  ▗           │
│     ▞▀▘▌ ▌▛▀▖▛▀▖▞▀▖▜▀ ▜▀ ▄ ▛▀▖▞▀▌    │
│     ▝▀▖▌ ▌▌ ▌▌ ▌▛▀ ▐ ▖▐ ▖▐ ▌ ▌▚▄▌    │
│     ▀▀ ▝▀▘▀▀ ▘ ▘▝▀▘ ▀  ▀ ▀▘▘ ▘▗▄▘    │
└──────────────────────────────────────┘
${NC}"
echo ""
echo -e "Please calculate ${task} for IP:"
echo "----------------------------"
echo -e "     ${GREEN}${myip}/${subnet}${NC}"
echo "----------------------------"
echo ""
echo -e "for solution see ${BLUE}${link}${NC} (Strg+click)"
echo ""
