# sandbox_telemetry_parse — 2026-11-27 00:10:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=148989 lines=336
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 328 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 328} |
| `chromeGpuPssKb` | {'int': 328} |
| `chromeOtherPssKb` | {'int': 328} |
| `chromeProcesses` | {'int': 328} |
| `chromeProfiles` | {'int': 328} |
| `chromeRendererMaxPssKb` | {'int': 328} |
| `chromeRendererPssKb` | {'int': 328} |
| `chromeRenderers` | {'int': 328} |
| `chromeTabs` | {'int': 328} |
| `chromeTabsProbedProfiles` | {'int': 328} |
| `chromeUtilityPssKb` | {'int': 328} |
| `desktopPssKb` | {'int': 328} |
| `hostPssKb` | {'int': 328} |
| `kind` | {'str': 328} |
| `memAvailableKb` | {'int': 328} |
| `memTotalKb` | {'int': 328} |
| `otherPssKb` | {'int': 328} |
| `processes` | {'int': 328} |
| `pssFallbackProcesses` | {'int': 328} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
