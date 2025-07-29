rule Beaconing_CobaltStrike_HTTP
{
    meta:
        description = "Detects potential HTTP-based beaconing patterns typical of Cobalt Strike"
        author = "Mohammed Alkahala"
        reference = "https://attack.mitre.org/techniques/T1071/001/"
        date = "2024-07-29"
        severity = "medium"
        mitre_tactic = "command_and_control"

    strings:
        $uri = "/submit.php"
        $useragent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
        $post = "Content-Type: application/octet-stream"

    condition:
        all of them
}
