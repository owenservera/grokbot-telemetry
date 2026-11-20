# sandbox_telemetry_parse — 2026-11-20 19:02:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1847105 lines=4095
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4082 |
| `egress_tunnel` | 9 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 4082} |
| `chromeGpuPssKb` | {'int': 4082} |
| `chromeOtherPssKb` | {'int': 4082} |
| `chromeProcesses` | {'int': 4082} |
| `chromeProfiles` | {'int': 4082} |
| `chromeRendererMaxPssKb` | {'int': 4082} |
| `chromeRendererPssKb` | {'int': 4082} |
| `chromeRenderers` | {'int': 4082} |
| `chromeTabs` | {'int': 4082} |
| `chromeTabsProbedProfiles` | {'int': 4082} |
| `chromeUtilityPssKb` | {'int': 4082} |
| `desktopPssKb` | {'int': 4082} |
| `hostPssKb` | {'int': 4082} |
| `kind` | {'str': 4082} |
| `memAvailableKb` | {'int': 4082} |
| `memTotalKb` | {'int': 4082} |
| `otherPssKb` | {'int': 4082} |
| `processes` | {'int': 4082} |
| `pssFallbackProcesses` | {'int': 4082} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
