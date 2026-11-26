# sandbox_telemetry_parse — 2026-11-26 13:19:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3267659 lines=7237
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7222 |
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
| `chromeBrowserPssKb` | {'int': 7222} |
| `chromeGpuPssKb` | {'int': 7222} |
| `chromeOtherPssKb` | {'int': 7222} |
| `chromeProcesses` | {'int': 7222} |
| `chromeProfiles` | {'int': 7222} |
| `chromeRendererMaxPssKb` | {'int': 7222} |
| `chromeRendererPssKb` | {'int': 7222} |
| `chromeRenderers` | {'int': 7222} |
| `chromeTabs` | {'int': 7222} |
| `chromeTabsProbedProfiles` | {'int': 7222} |
| `chromeUtilityPssKb` | {'int': 7222} |
| `desktopPssKb` | {'int': 7222} |
| `hostPssKb` | {'int': 7222} |
| `kind` | {'str': 7222} |
| `memAvailableKb` | {'int': 7222} |
| `memTotalKb` | {'int': 7222} |
| `otherPssKb` | {'int': 7222} |
| `processes` | {'int': 7222} |
| `pssFallbackProcesses` | {'int': 7222} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
