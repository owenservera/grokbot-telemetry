# sandbox_telemetry_parse — 2026-11-12 03:52:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1956276 lines=4331
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4322 |
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
| `chromeBrowserPssKb` | {'int': 4322} |
| `chromeGpuPssKb` | {'int': 4322} |
| `chromeOtherPssKb` | {'int': 4322} |
| `chromeProcesses` | {'int': 4322} |
| `chromeProfiles` | {'int': 4322} |
| `chromeRendererMaxPssKb` | {'int': 4322} |
| `chromeRendererPssKb` | {'int': 4322} |
| `chromeRenderers` | {'int': 4322} |
| `chromeTabs` | {'int': 4322} |
| `chromeTabsProbedProfiles` | {'int': 4322} |
| `chromeUtilityPssKb` | {'int': 4322} |
| `desktopPssKb` | {'int': 4322} |
| `hostPssKb` | {'int': 4322} |
| `kind` | {'str': 4322} |
| `memAvailableKb` | {'int': 4322} |
| `memTotalKb` | {'int': 4322} |
| `otherPssKb` | {'int': 4322} |
| `processes` | {'int': 4322} |
| `pssFallbackProcesses` | {'int': 4322} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
