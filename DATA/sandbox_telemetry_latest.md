# sandbox_telemetry_parse — 2026-11-11 23:19:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1866639 lines=4133
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4124 |
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
| `chromeBrowserPssKb` | {'int': 4124} |
| `chromeGpuPssKb` | {'int': 4124} |
| `chromeOtherPssKb` | {'int': 4124} |
| `chromeProcesses` | {'int': 4124} |
| `chromeProfiles` | {'int': 4124} |
| `chromeRendererMaxPssKb` | {'int': 4124} |
| `chromeRendererPssKb` | {'int': 4124} |
| `chromeRenderers` | {'int': 4124} |
| `chromeTabs` | {'int': 4124} |
| `chromeTabsProbedProfiles` | {'int': 4124} |
| `chromeUtilityPssKb` | {'int': 4124} |
| `desktopPssKb` | {'int': 4124} |
| `hostPssKb` | {'int': 4124} |
| `kind` | {'str': 4124} |
| `memAvailableKb` | {'int': 4124} |
| `memTotalKb` | {'int': 4124} |
| `otherPssKb` | {'int': 4124} |
| `processes` | {'int': 4124} |
| `pssFallbackProcesses` | {'int': 4124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
