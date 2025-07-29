rule Malicious_PowerShell_Encoded_Command
{
    meta:
        description = "Detects suspicious use of PowerShell with encoded commands"
        author = "Mohammed Alkahala"
        reference = "https://attack.mitre.org/techniques/T1059/001/"
        date = "2024-07-29"
        severity = "high"
        mitre_tactic = "execution"

    strings:
        $enc1 = "-EncodedCommand"
        $enc2 = "JAB"  // Base64-encoded PowerShell often starts with this

    condition:
        any of ($enc*) 
}
