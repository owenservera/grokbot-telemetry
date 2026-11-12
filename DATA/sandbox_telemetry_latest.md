# sandbox_telemetry_parse — 2026-11-12 03:33:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1950847 lines=4319
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4310 |
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
| `chromeBrowserPssKb` | {'int': 4310} |
| `chromeGpuPssKb` | {'int': 4310} |
| `chromeOtherPssKb` | {'int': 4310} |
| `chromeProcesses` | {'int': 4310} |
| `chromeProfiles` | {'int': 4310} |
| `chromeRendererMaxPssKb` | {'int': 4310} |
| `chromeRendererPssKb` | {'int': 4310} |
| `chromeRenderers` | {'int': 4310} |
| `chromeTabs` | {'int': 4310} |
| `chromeTabsProbedProfiles` | {'int': 4310} |
| `chromeUtilityPssKb` | {'int': 4310} |
| `desktopPssKb` | {'int': 4310} |
| `hostPssKb` | {'int': 4310} |
| `kind` | {'str': 4310} |
| `memAvailableKb` | {'int': 4310} |
| `memTotalKb` | {'int': 4310} |
| `otherPssKb` | {'int': 4310} |
| `processes` | {'int': 4310} |
| `pssFallbackProcesses` | {'int': 4310} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
