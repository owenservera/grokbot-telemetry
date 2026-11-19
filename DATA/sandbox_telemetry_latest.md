# sandbox_telemetry_parse — 2026-11-19 17:24:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1370702 lines=3040
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3029 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3029} |
| `chromeGpuPssKb` | {'int': 3029} |
| `chromeOtherPssKb` | {'int': 3029} |
| `chromeProcesses` | {'int': 3029} |
| `chromeProfiles` | {'int': 3029} |
| `chromeRendererMaxPssKb` | {'int': 3029} |
| `chromeRendererPssKb` | {'int': 3029} |
| `chromeRenderers` | {'int': 3029} |
| `chromeTabs` | {'int': 3029} |
| `chromeTabsProbedProfiles` | {'int': 3029} |
| `chromeUtilityPssKb` | {'int': 3029} |
| `desktopPssKb` | {'int': 3029} |
| `hostPssKb` | {'int': 3029} |
| `kind` | {'str': 3029} |
| `memAvailableKb` | {'int': 3029} |
| `memTotalKb` | {'int': 3029} |
| `otherPssKb` | {'int': 3029} |
| `processes` | {'int': 3029} |
| `pssFallbackProcesses` | {'int': 3029} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
