#!/usr/bin/env bash
set -e

CURDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# shellcheck source=../shell_config.sh
. "$CURDIR"/../shell_config.sh
sleep 3
${CLICKHOUSE_CURL_COMMAND} -q -I -sSg "${CLICKHOUSE_URL}&query=SELECT%201" | grep -o x-timeplus-query-id
