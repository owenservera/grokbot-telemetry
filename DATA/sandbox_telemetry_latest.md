# sandbox_telemetry_parse — 2026-11-11 23:08:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1862119 lines=4123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4114 |
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
| `chromeBrowserPssKb` | {'int': 4114} |
| `chromeGpuPssKb` | {'int': 4114} |
| `chromeOtherPssKb` | {'int': 4114} |
| `chromeProcesses` | {'int': 4114} |
| `chromeProfiles` | {'int': 4114} |
| `chromeRendererMaxPssKb` | {'int': 4114} |
| `chromeRendererPssKb` | {'int': 4114} |
| `chromeRenderers` | {'int': 4114} |
| `chromeTabs` | {'int': 4114} |
| `chromeTabsProbedProfiles` | {'int': 4114} |
| `chromeUtilityPssKb` | {'int': 4114} |
| `desktopPssKb` | {'int': 4114} |
| `hostPssKb` | {'int': 4114} |
| `kind` | {'str': 4114} |
| `memAvailableKb` | {'int': 4114} |
| `memTotalKb` | {'int': 4114} |
| `otherPssKb` | {'int': 4114} |
| `processes` | {'int': 4114} |
| `pssFallbackProcesses` | {'int': 4114} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
