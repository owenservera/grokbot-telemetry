# sandbox_telemetry_parse — 2026-11-06 20:30:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=156795 lines=354
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 345 |
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
| `chromeBrowserPssKb` | {'int': 345} |
| `chromeGpuPssKb` | {'int': 345} |
| `chromeOtherPssKb` | {'int': 345} |
| `chromeProcesses` | {'int': 345} |
| `chromeProfiles` | {'int': 345} |
| `chromeRendererMaxPssKb` | {'int': 345} |
| `chromeRendererPssKb` | {'int': 345} |
| `chromeRenderers` | {'int': 345} |
| `chromeTabs` | {'int': 345} |
| `chromeTabsProbedProfiles` | {'int': 345} |
| `chromeUtilityPssKb` | {'int': 345} |
| `desktopPssKb` | {'int': 345} |
| `hostPssKb` | {'int': 345} |
| `kind` | {'str': 345} |
| `memAvailableKb` | {'int': 345} |
| `memTotalKb` | {'int': 345} |
| `otherPssKb` | {'int': 345} |
| `processes` | {'int': 345} |
| `pssFallbackProcesses` | {'int': 345} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
