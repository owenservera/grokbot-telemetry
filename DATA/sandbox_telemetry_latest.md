# sandbox_telemetry_parse — 2026-11-12 03:34:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1951299 lines=4320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4311 |
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
| `chromeBrowserPssKb` | {'int': 4311} |
| `chromeGpuPssKb` | {'int': 4311} |
| `chromeOtherPssKb` | {'int': 4311} |
| `chromeProcesses` | {'int': 4311} |
| `chromeProfiles` | {'int': 4311} |
| `chromeRendererMaxPssKb` | {'int': 4311} |
| `chromeRendererPssKb` | {'int': 4311} |
| `chromeRenderers` | {'int': 4311} |
| `chromeTabs` | {'int': 4311} |
| `chromeTabsProbedProfiles` | {'int': 4311} |
| `chromeUtilityPssKb` | {'int': 4311} |
| `desktopPssKb` | {'int': 4311} |
| `hostPssKb` | {'int': 4311} |
| `kind` | {'str': 4311} |
| `memAvailableKb` | {'int': 4311} |
| `memTotalKb` | {'int': 4311} |
| `otherPssKb` | {'int': 4311} |
| `processes` | {'int': 4311} |
| `pssFallbackProcesses` | {'int': 4311} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
