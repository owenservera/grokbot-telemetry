# sandbox_telemetry_parse — 2026-11-12 17:04:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2234170 lines=4945
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4936 |
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
| `chromeBrowserPssKb` | {'int': 4936} |
| `chromeGpuPssKb` | {'int': 4936} |
| `chromeOtherPssKb` | {'int': 4936} |
| `chromeProcesses` | {'int': 4936} |
| `chromeProfiles` | {'int': 4936} |
| `chromeRendererMaxPssKb` | {'int': 4936} |
| `chromeRendererPssKb` | {'int': 4936} |
| `chromeRenderers` | {'int': 4936} |
| `chromeTabs` | {'int': 4936} |
| `chromeTabsProbedProfiles` | {'int': 4936} |
| `chromeUtilityPssKb` | {'int': 4936} |
| `desktopPssKb` | {'int': 4936} |
| `hostPssKb` | {'int': 4936} |
| `kind` | {'str': 4936} |
| `memAvailableKb` | {'int': 4936} |
| `memTotalKb` | {'int': 4936} |
| `otherPssKb` | {'int': 4936} |
| `processes` | {'int': 4936} |
| `pssFallbackProcesses` | {'int': 4936} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
