# sandbox_telemetry_parse — 2026-11-24 19:40:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2422320 lines=5368
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5353 |
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
| `chromeBrowserPssKb` | {'int': 5353} |
| `chromeGpuPssKb` | {'int': 5353} |
| `chromeOtherPssKb` | {'int': 5353} |
| `chromeProcesses` | {'int': 5353} |
| `chromeProfiles` | {'int': 5353} |
| `chromeRendererMaxPssKb` | {'int': 5353} |
| `chromeRendererPssKb` | {'int': 5353} |
| `chromeRenderers` | {'int': 5353} |
| `chromeTabs` | {'int': 5353} |
| `chromeTabsProbedProfiles` | {'int': 5353} |
| `chromeUtilityPssKb` | {'int': 5353} |
| `desktopPssKb` | {'int': 5353} |
| `hostPssKb` | {'int': 5353} |
| `kind` | {'str': 5353} |
| `memAvailableKb` | {'int': 5353} |
| `memTotalKb` | {'int': 5353} |
| `otherPssKb` | {'int': 5353} |
| `processes` | {'int': 5353} |
| `pssFallbackProcesses` | {'int': 5353} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
