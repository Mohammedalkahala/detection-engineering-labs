import json

def parse_logs(file_path):
    with open(file_path, 'r') as f:
        for line in f:
            try:
                log = json.loads(line)
                user = log.get('User', 'N/A')
                event = log.get('EventID', 'N/A')
                command = log.get('CommandLine', '')
                print(f"[+] Event: {event} | User: {user} | Command: {command}")
            except json.JSONDecodeError:
                continue

if __name__ == "__main__":
    parse_logs('sample_logs.json')
