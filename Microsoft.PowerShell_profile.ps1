Write-Color -Text " "
Write-Color -Text "      _---~~(~~-_.",         " " -Color Blue
Write-Color -Text "    _{        )   )",        "                            /@ "  -Color Blue, Cyan
Write-Color -Text "  ,   ) -~~- ( ,-' )_",      "                         @(","@ "     -Color Blue, Blue, Cyan
Write-Color -Text " (  `-,_..`., )-- '_,)",     "                       @#/","     @@*  "  -Color DarkBlue, Blue, Cyan
Write-Color -Text "( ` _)  (  -~( -_ `,  }",    "                    @@(/","       @@,, " -Color DarkBlue, Blue, Cyan
Write-Color -Text "(_-  _  ~_-~~~~`,  ,' )",    "                  @%(/ @@","@@@@@@","@@@@ " -Color DarkBlue, Blue, DarkCyan, Cyan
Write-Color -Text "  `~ -(    __;-,((()))",     "                 @@#","#","                 " -Color DarkCyan, Blue, DarkCyan, Cyan
Write-Color -Text "      *~~~~{_ -_(())",       "                 @@##","#(((/","///**","****,,,,,@ "  -Color DarkCyan, Blue, DarkBlue, DarkCyan, Cyan
Write-Color -Text "               ` \ }",       "                @@%%#","##(((/","///**","****,,,,,,@ "    -Color Cyan, Blue, DarkBlue, DarkCyan, Cyan
Write-Color -Text "                 {`} ",      "              @@@@@W","@@@@@@","@@@@@@","@@@@@@@@@@@ "   -Color Cyan, Blue, DarkBlue, DarkCyan, Cyan
Write-Color -Text " "

Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme spaceship