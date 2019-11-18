ls -l | awk '{ if (NR % 2 == 1) { print $0 } }'
#ls -l | awk -v l=0 '{ if (++l % 2 == 1) { print $0 } }'
