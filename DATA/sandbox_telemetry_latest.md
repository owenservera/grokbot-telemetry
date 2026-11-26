# sandbox_telemetry_parse — 2026-11-26 12:49:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3257250 lines=7214
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7199 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7199} |
| `chromeGpuPssKb` | {'int': 7199} |
| `chromeOtherPssKb` | {'int': 7199} |
| `chromeProcesses` | {'int': 7199} |
| `chromeProfiles` | {'int': 7199} |
| `chromeRendererMaxPssKb` | {'int': 7199} |
| `chromeRendererPssKb` | {'int': 7199} |
| `chromeRenderers` | {'int': 7199} |
| `chromeTabs` | {'int': 7199} |
| `chromeTabsProbedProfiles` | {'int': 7199} |
| `chromeUtilityPssKb` | {'int': 7199} |
| `desktopPssKb` | {'int': 7199} |
| `hostPssKb` | {'int': 7199} |
| `kind` | {'str': 7199} |
| `memAvailableKb` | {'int': 7199} |
| `memTotalKb` | {'int': 7199} |
| `otherPssKb` | {'int': 7199} |
| `processes` | {'int': 7199} |
| `pssFallbackProcesses` | {'int': 7199} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
