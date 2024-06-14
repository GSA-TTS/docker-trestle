
#############################################################################
# yaml_parse_value(filename, key, default_value=""): helper function to parse
# a yaml file and retreive the value at a key. default_value is returned
# if either the file does not exist or the key does not exist
#############################################################################
yaml_parse_value() {
  default_value=${3:-""}
  if [ -f "$1" ]; then
    python3 -c "import yaml;config=yaml.safe_load(open('$1'));print(config['$2'] if '$2' in config else '$default_value')"
  else
    echo $default_value
  fi
}
#############################################################################
# yaml_comma_sep_components(filename): helper function to parse a yaml file
# and output the component names as a comma separated string
#
# Expected file format:
#
# components:
#   - first_component
#   - second_component
#
#############################################################################
yaml_comma_sep_components() {
  if [ -f "$1" ]; then
    python3 -c "import yaml;config=yaml.safe_load(open('$1'));cds=config['components'] if 'components' in config else ['']; print(','.join(cds))"
  else
    echo ""
  fi
}
