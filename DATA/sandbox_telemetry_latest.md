# sandbox_telemetry_parse — 2026-11-11 22:18:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1845372 lines=4086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4077 |
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
| `chromeBrowserPssKb` | {'int': 4077} |
| `chromeGpuPssKb` | {'int': 4077} |
| `chromeOtherPssKb` | {'int': 4077} |
| `chromeProcesses` | {'int': 4077} |
| `chromeProfiles` | {'int': 4077} |
| `chromeRendererMaxPssKb` | {'int': 4077} |
| `chromeRendererPssKb` | {'int': 4077} |
| `chromeRenderers` | {'int': 4077} |
| `chromeTabs` | {'int': 4077} |
| `chromeTabsProbedProfiles` | {'int': 4077} |
| `chromeUtilityPssKb` | {'int': 4077} |
| `desktopPssKb` | {'int': 4077} |
| `hostPssKb` | {'int': 4077} |
| `kind` | {'str': 4077} |
| `memAvailableKb` | {'int': 4077} |
| `memTotalKb` | {'int': 4077} |
| `otherPssKb` | {'int': 4077} |
| `processes` | {'int': 4077} |
| `pssFallbackProcesses` | {'int': 4077} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
