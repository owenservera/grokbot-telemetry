# sandbox_telemetry_parse — 2026-11-25 13:19:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2770998 lines=6139
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6124 |
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
| `chromeBrowserPssKb` | {'int': 6124} |
| `chromeGpuPssKb` | {'int': 6124} |
| `chromeOtherPssKb` | {'int': 6124} |
| `chromeProcesses` | {'int': 6124} |
| `chromeProfiles` | {'int': 6124} |
| `chromeRendererMaxPssKb` | {'int': 6124} |
| `chromeRendererPssKb` | {'int': 6124} |
| `chromeRenderers` | {'int': 6124} |
| `chromeTabs` | {'int': 6124} |
| `chromeTabsProbedProfiles` | {'int': 6124} |
| `chromeUtilityPssKb` | {'int': 6124} |
| `desktopPssKb` | {'int': 6124} |
| `hostPssKb` | {'int': 6124} |
| `kind` | {'str': 6124} |
| `memAvailableKb` | {'int': 6124} |
| `memTotalKb` | {'int': 6124} |
| `otherPssKb` | {'int': 6124} |
| `processes` | {'int': 6124} |
| `pssFallbackProcesses` | {'int': 6124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
