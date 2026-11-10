# sandbox_telemetry_parse — 2026-11-10 16:04:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1213667 lines=2690
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2681 |
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
| `chromeBrowserPssKb` | {'int': 2681} |
| `chromeGpuPssKb` | {'int': 2681} |
| `chromeOtherPssKb` | {'int': 2681} |
| `chromeProcesses` | {'int': 2681} |
| `chromeProfiles` | {'int': 2681} |
| `chromeRendererMaxPssKb` | {'int': 2681} |
| `chromeRendererPssKb` | {'int': 2681} |
| `chromeRenderers` | {'int': 2681} |
| `chromeTabs` | {'int': 2681} |
| `chromeTabsProbedProfiles` | {'int': 2681} |
| `chromeUtilityPssKb` | {'int': 2681} |
| `desktopPssKb` | {'int': 2681} |
| `hostPssKb` | {'int': 2681} |
| `kind` | {'str': 2681} |
| `memAvailableKb` | {'int': 2681} |
| `memTotalKb` | {'int': 2681} |
| `otherPssKb` | {'int': 2681} |
| `processes` | {'int': 2681} |
| `pssFallbackProcesses` | {'int': 2681} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
