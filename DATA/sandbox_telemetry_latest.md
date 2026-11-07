# sandbox_telemetry_parse — 2026-11-07 13:53:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=490106 lines=1091
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1082 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1082} |
| `chromeGpuPssKb` | {'int': 1082} |
| `chromeOtherPssKb` | {'int': 1082} |
| `chromeProcesses` | {'int': 1082} |
| `chromeProfiles` | {'int': 1082} |
| `chromeRendererMaxPssKb` | {'int': 1082} |
| `chromeRendererPssKb` | {'int': 1082} |
| `chromeRenderers` | {'int': 1082} |
| `chromeTabs` | {'int': 1082} |
| `chromeTabsProbedProfiles` | {'int': 1082} |
| `chromeUtilityPssKb` | {'int': 1082} |
| `desktopPssKb` | {'int': 1082} |
| `hostPssKb` | {'int': 1082} |
| `kind` | {'str': 1082} |
| `memAvailableKb` | {'int': 1082} |
| `memTotalKb` | {'int': 1082} |
| `otherPssKb` | {'int': 1082} |
| `processes` | {'int': 1082} |
| `pssFallbackProcesses` | {'int': 1082} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
