# sandbox_telemetry_parse — 2026-11-11 00:17:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1395193 lines=3091
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3082 |
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
| `chromeBrowserPssKb` | {'int': 3082} |
| `chromeGpuPssKb` | {'int': 3082} |
| `chromeOtherPssKb` | {'int': 3082} |
| `chromeProcesses` | {'int': 3082} |
| `chromeProfiles` | {'int': 3082} |
| `chromeRendererMaxPssKb` | {'int': 3082} |
| `chromeRendererPssKb` | {'int': 3082} |
| `chromeRenderers` | {'int': 3082} |
| `chromeTabs` | {'int': 3082} |
| `chromeTabsProbedProfiles` | {'int': 3082} |
| `chromeUtilityPssKb` | {'int': 3082} |
| `desktopPssKb` | {'int': 3082} |
| `hostPssKb` | {'int': 3082} |
| `kind` | {'str': 3082} |
| `memAvailableKb` | {'int': 3082} |
| `memTotalKb` | {'int': 3082} |
| `otherPssKb` | {'int': 3082} |
| `processes` | {'int': 3082} |
| `pssFallbackProcesses` | {'int': 3082} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
