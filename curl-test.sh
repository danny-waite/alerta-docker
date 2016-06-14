curl -s -XPOST -H "Content-type: application/json" http://alerta-api:8000/alert -d '
{
  "resource": "host678:eth0",
  "event": "HW:NIC:FAILED",
  "group": "Hardware",
  "severity": "major",
  "environment": "Production",
  "service": [
      "Network"
  ],
  "text": "Network interface eth0 is down.",
  "value": "error"
}'
