# sandbox_telemetry_parse — 2026-11-09 18:00:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=777930 lines=1727
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1718 |
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
| `chromeBrowserPssKb` | {'int': 1718} |
| `chromeGpuPssKb` | {'int': 1718} |
| `chromeOtherPssKb` | {'int': 1718} |
| `chromeProcesses` | {'int': 1718} |
| `chromeProfiles` | {'int': 1718} |
| `chromeRendererMaxPssKb` | {'int': 1718} |
| `chromeRendererPssKb` | {'int': 1718} |
| `chromeRenderers` | {'int': 1718} |
| `chromeTabs` | {'int': 1718} |
| `chromeTabsProbedProfiles` | {'int': 1718} |
| `chromeUtilityPssKb` | {'int': 1718} |
| `desktopPssKb` | {'int': 1718} |
| `hostPssKb` | {'int': 1718} |
| `kind` | {'str': 1718} |
| `memAvailableKb` | {'int': 1718} |
| `memTotalKb` | {'int': 1718} |
| `otherPssKb` | {'int': 1718} |
| `processes` | {'int': 1718} |
| `pssFallbackProcesses` | {'int': 1718} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
