#!/bin/bash
LOGFILE="server.log"
echo "====Log File Analyzer===="
echo "File: $LOGFILE"
echo "Date: $(date)"
echo "============================="

ERROR_COUNT=$(grep -c "ERROR" $LOGFILE)
INFO_COUNT=$(grep -c "INFO" $LOGFILE)
WARNING_COUNT=$(grep -c "WARNING" $LOGFILE)

echo "ERROR_COUNT:$ERROR_COUNT"
echo "INFO_COUNT:$INFO_COUNT"
echo "WARNING_COUNT:$WARNING_COUNT"

echo "=================="
echo "Most Recent Error"
grep "ERROR" $LOGFILE | tail -1
