# sandbox_telemetry_parse — 2026-11-17 09:36:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=337886 lines=753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 746 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 746} |
| `chromeGpuPssKb` | {'int': 746} |
| `chromeOtherPssKb` | {'int': 746} |
| `chromeProcesses` | {'int': 746} |
| `chromeProfiles` | {'int': 746} |
| `chromeRendererMaxPssKb` | {'int': 746} |
| `chromeRendererPssKb` | {'int': 746} |
| `chromeRenderers` | {'int': 746} |
| `chromeTabs` | {'int': 746} |
| `chromeTabsProbedProfiles` | {'int': 746} |
| `chromeUtilityPssKb` | {'int': 746} |
| `desktopPssKb` | {'int': 746} |
| `hostPssKb` | {'int': 746} |
| `kind` | {'str': 746} |
| `memAvailableKb` | {'int': 746} |
| `memTotalKb` | {'int': 746} |
| `otherPssKb` | {'int': 746} |
| `processes` | {'int': 746} |
| `pssFallbackProcesses` | {'int': 746} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
