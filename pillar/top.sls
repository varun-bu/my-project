base:
  '*':
    - default
  '192.168.1.15':
    - match: ipcidr
    - nginx1
  '192.168.1.122':
    - match: ipcidr
    - nginx2