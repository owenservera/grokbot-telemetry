# sandbox_telemetry_parse — 2026-11-24 20:49:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2444498 lines=5417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5402 |
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
| `chromeBrowserPssKb` | {'int': 5402} |
| `chromeGpuPssKb` | {'int': 5402} |
| `chromeOtherPssKb` | {'int': 5402} |
| `chromeProcesses` | {'int': 5402} |
| `chromeProfiles` | {'int': 5402} |
| `chromeRendererMaxPssKb` | {'int': 5402} |
| `chromeRendererPssKb` | {'int': 5402} |
| `chromeRenderers` | {'int': 5402} |
| `chromeTabs` | {'int': 5402} |
| `chromeTabsProbedProfiles` | {'int': 5402} |
| `chromeUtilityPssKb` | {'int': 5402} |
| `desktopPssKb` | {'int': 5402} |
| `hostPssKb` | {'int': 5402} |
| `kind` | {'str': 5402} |
| `memAvailableKb` | {'int': 5402} |
| `memTotalKb` | {'int': 5402} |
| `otherPssKb` | {'int': 5402} |
| `processes` | {'int': 5402} |
| `pssFallbackProcesses` | {'int': 5402} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
