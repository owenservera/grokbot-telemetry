# sandbox_telemetry_parse — 2026-11-18 13:56:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=844755 lines=1874
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1867 |
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
| `chromeBrowserPssKb` | {'int': 1867} |
| `chromeGpuPssKb` | {'int': 1867} |
| `chromeOtherPssKb` | {'int': 1867} |
| `chromeProcesses` | {'int': 1867} |
| `chromeProfiles` | {'int': 1867} |
| `chromeRendererMaxPssKb` | {'int': 1867} |
| `chromeRendererPssKb` | {'int': 1867} |
| `chromeRenderers` | {'int': 1867} |
| `chromeTabs` | {'int': 1867} |
| `chromeTabsProbedProfiles` | {'int': 1867} |
| `chromeUtilityPssKb` | {'int': 1867} |
| `desktopPssKb` | {'int': 1867} |
| `hostPssKb` | {'int': 1867} |
| `kind` | {'str': 1867} |
| `memAvailableKb` | {'int': 1867} |
| `memTotalKb` | {'int': 1867} |
| `otherPssKb` | {'int': 1867} |
| `processes` | {'int': 1867} |
| `pssFallbackProcesses` | {'int': 1867} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
