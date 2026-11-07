# sandbox_telemetry_parse — 2026-11-07 05:49:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=332265 lines=742
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 733 |
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
| `chromeBrowserPssKb` | {'int': 733} |
| `chromeGpuPssKb` | {'int': 733} |
| `chromeOtherPssKb` | {'int': 733} |
| `chromeProcesses` | {'int': 733} |
| `chromeProfiles` | {'int': 733} |
| `chromeRendererMaxPssKb` | {'int': 733} |
| `chromeRendererPssKb` | {'int': 733} |
| `chromeRenderers` | {'int': 733} |
| `chromeTabs` | {'int': 733} |
| `chromeTabsProbedProfiles` | {'int': 733} |
| `chromeUtilityPssKb` | {'int': 733} |
| `desktopPssKb` | {'int': 733} |
| `hostPssKb` | {'int': 733} |
| `kind` | {'str': 733} |
| `memAvailableKb` | {'int': 733} |
| `memTotalKb` | {'int': 733} |
| `otherPssKb` | {'int': 733} |
| `processes` | {'int': 733} |
| `pssFallbackProcesses` | {'int': 733} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
