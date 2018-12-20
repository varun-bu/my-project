out_path:
  cmd.run:
    - name: echo "the path is {{ pillar['home_dir'] }}"