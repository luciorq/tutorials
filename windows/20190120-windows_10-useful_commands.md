# Windows 10 Useful commands

## Checking battery life status

Hit Windows Button + X and select Command Prompt (Admin), execute:

```
powercfg /energy
powercfg /batteryreport
```

**Output:** Battery life report saved to file path `C:\Windows\system32\battery-report.html`. 

* Open `C:\Windows\system32\battery-report.html`.
* Open `C:\Windows\system32\energy-report.html`