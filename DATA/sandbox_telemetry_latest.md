# sandbox_telemetry_parse — 2026-11-18 21:10:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=977478 lines=2169
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2160 |
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
| `chromeBrowserPssKb` | {'int': 2160} |
| `chromeGpuPssKb` | {'int': 2160} |
| `chromeOtherPssKb` | {'int': 2160} |
| `chromeProcesses` | {'int': 2160} |
| `chromeProfiles` | {'int': 2160} |
| `chromeRendererMaxPssKb` | {'int': 2160} |
| `chromeRendererPssKb` | {'int': 2160} |
| `chromeRenderers` | {'int': 2160} |
| `chromeTabs` | {'int': 2160} |
| `chromeTabsProbedProfiles` | {'int': 2160} |
| `chromeUtilityPssKb` | {'int': 2160} |
| `desktopPssKb` | {'int': 2160} |
| `hostPssKb` | {'int': 2160} |
| `kind` | {'str': 2160} |
| `memAvailableKb` | {'int': 2160} |
| `memTotalKb` | {'int': 2160} |
| `otherPssKb` | {'int': 2160} |
| `processes` | {'int': 2160} |
| `pssFallbackProcesses` | {'int': 2160} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
