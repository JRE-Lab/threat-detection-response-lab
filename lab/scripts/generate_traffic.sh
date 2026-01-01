diff --git a/lab/scripts/generate_traffic.sh b/lab/scripts/generate_traffic.sh
new file mode 100755
index 0000000000000000000000000000000000000000..3200a30054718b08bf24cb07f8c33a494c42e32e
--- /dev/null
+++ b/lab/scripts/generate_traffic.sh
@@ -0,0 +1,11 @@
+#!/usr/bin/env bash
+set -euo pipefail
+
+TARGET_HOST=${TARGET_HOST:-localhost}
+TARGET_PORT=${TARGET_PORT:-8080}
+
+curl -s "http://${TARGET_HOST}:${TARGET_PORT}/" >/dev/null
+curl -s "http://${TARGET_HOST}:${TARGET_PORT}/admin" >/dev/null
+curl -s -A "sqlmap/1.6" "http://${TARGET_HOST}:${TARGET_PORT}/" >/dev/null
+
+printf "Traffic sent to %s:%s\n" "${TARGET_HOST}" "${TARGET_PORT}"
