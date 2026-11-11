# sandbox_telemetry_parse — 2026-11-11 09:37:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1566114 lines=3469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3460 |
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
| `chromeBrowserPssKb` | {'int': 3460} |
| `chromeGpuPssKb` | {'int': 3460} |
| `chromeOtherPssKb` | {'int': 3460} |
| `chromeProcesses` | {'int': 3460} |
| `chromeProfiles` | {'int': 3460} |
| `chromeRendererMaxPssKb` | {'int': 3460} |
| `chromeRendererPssKb` | {'int': 3460} |
| `chromeRenderers` | {'int': 3460} |
| `chromeTabs` | {'int': 3460} |
| `chromeTabsProbedProfiles` | {'int': 3460} |
| `chromeUtilityPssKb` | {'int': 3460} |
| `desktopPssKb` | {'int': 3460} |
| `hostPssKb` | {'int': 3460} |
| `kind` | {'str': 3460} |
| `memAvailableKb` | {'int': 3460} |
| `memTotalKb` | {'int': 3460} |
| `otherPssKb` | {'int': 3460} |
| `processes` | {'int': 3460} |
| `pssFallbackProcesses` | {'int': 3460} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
