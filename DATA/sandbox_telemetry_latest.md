# sandbox_telemetry_parse — 2026-11-11 06:18:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1503712 lines=3331
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3322 |
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
| `chromeBrowserPssKb` | {'int': 3322} |
| `chromeGpuPssKb` | {'int': 3322} |
| `chromeOtherPssKb` | {'int': 3322} |
| `chromeProcesses` | {'int': 3322} |
| `chromeProfiles` | {'int': 3322} |
| `chromeRendererMaxPssKb` | {'int': 3322} |
| `chromeRendererPssKb` | {'int': 3322} |
| `chromeRenderers` | {'int': 3322} |
| `chromeTabs` | {'int': 3322} |
| `chromeTabsProbedProfiles` | {'int': 3322} |
| `chromeUtilityPssKb` | {'int': 3322} |
| `desktopPssKb` | {'int': 3322} |
| `hostPssKb` | {'int': 3322} |
| `kind` | {'str': 3322} |
| `memAvailableKb` | {'int': 3322} |
| `memTotalKb` | {'int': 3322} |
| `otherPssKb` | {'int': 3322} |
| `processes` | {'int': 3322} |
| `pssFallbackProcesses` | {'int': 3322} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
