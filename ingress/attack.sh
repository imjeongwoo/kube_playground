#!/bin/bash
# 부하 테스팅
vegeta --version && echo "GET http://127.0.0.1.xip.io/sleep/5" | vegeta attack -rate=1 -keepalive=false -duration=60s | vegeta report