# sandbox_telemetry_parse — 2026-11-26 15:19:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3307452 lines=7325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7310 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7310} |
| `chromeGpuPssKb` | {'int': 7310} |
| `chromeOtherPssKb` | {'int': 7310} |
| `chromeProcesses` | {'int': 7310} |
| `chromeProfiles` | {'int': 7310} |
| `chromeRendererMaxPssKb` | {'int': 7310} |
| `chromeRendererPssKb` | {'int': 7310} |
| `chromeRenderers` | {'int': 7310} |
| `chromeTabs` | {'int': 7310} |
| `chromeTabsProbedProfiles` | {'int': 7310} |
| `chromeUtilityPssKb` | {'int': 7310} |
| `desktopPssKb` | {'int': 7310} |
| `hostPssKb` | {'int': 7310} |
| `kind` | {'str': 7310} |
| `memAvailableKb` | {'int': 7310} |
| `memTotalKb` | {'int': 7310} |
| `otherPssKb` | {'int': 7310} |
| `processes` | {'int': 7310} |
| `pssFallbackProcesses` | {'int': 7310} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
