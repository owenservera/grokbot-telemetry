# sandbox_telemetry_parse — 2026-11-18 05:12:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=691935 lines=1536
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1529 |
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
| `chromeBrowserPssKb` | {'int': 1529} |
| `chromeGpuPssKb` | {'int': 1529} |
| `chromeOtherPssKb` | {'int': 1529} |
| `chromeProcesses` | {'int': 1529} |
| `chromeProfiles` | {'int': 1529} |
| `chromeRendererMaxPssKb` | {'int': 1529} |
| `chromeRendererPssKb` | {'int': 1529} |
| `chromeRenderers` | {'int': 1529} |
| `chromeTabs` | {'int': 1529} |
| `chromeTabsProbedProfiles` | {'int': 1529} |
| `chromeUtilityPssKb` | {'int': 1529} |
| `desktopPssKb` | {'int': 1529} |
| `hostPssKb` | {'int': 1529} |
| `kind` | {'str': 1529} |
| `memAvailableKb` | {'int': 1529} |
| `memTotalKb` | {'int': 1529} |
| `otherPssKb` | {'int': 1529} |
| `processes` | {'int': 1529} |
| `pssFallbackProcesses` | {'int': 1529} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
