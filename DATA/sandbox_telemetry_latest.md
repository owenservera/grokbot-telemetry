# sandbox_telemetry_parse — 2026-11-06 17:32:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=85742 lines=197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 188 |
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
| `chromeBrowserPssKb` | {'int': 188} |
| `chromeGpuPssKb` | {'int': 188} |
| `chromeOtherPssKb` | {'int': 188} |
| `chromeProcesses` | {'int': 188} |
| `chromeProfiles` | {'int': 188} |
| `chromeRendererMaxPssKb` | {'int': 188} |
| `chromeRendererPssKb` | {'int': 188} |
| `chromeRenderers` | {'int': 188} |
| `chromeTabs` | {'int': 188} |
| `chromeTabsProbedProfiles` | {'int': 188} |
| `chromeUtilityPssKb` | {'int': 188} |
| `desktopPssKb` | {'int': 188} |
| `hostPssKb` | {'int': 188} |
| `kind` | {'str': 188} |
| `memAvailableKb` | {'int': 188} |
| `memTotalKb` | {'int': 188} |
| `otherPssKb` | {'int': 188} |
| `processes` | {'int': 188} |
| `pssFallbackProcesses` | {'int': 188} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
