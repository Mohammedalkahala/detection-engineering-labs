import yaml

def convert_sigma_to_kql(yaml_file):
    with open(yaml_file, 'r') as f:
        sigma = yaml.safe_load(f)

    field = sigma.get('detection', {}).get('selection', {})
    kql_parts = []
    for key, value in field.items():
        kql_parts.append(f"{key} == \"{value}\"")

    print(" | where " + " and ".join(kql_parts))

if __name__ == "__main__":
    convert_sigma_to_kql('suspicious_powershell.yml')
