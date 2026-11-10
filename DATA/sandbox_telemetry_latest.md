# sandbox_telemetry_parse — 2026-11-10 05:01:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=995986 lines=2209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2200 |
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
| `chromeBrowserPssKb` | {'int': 2200} |
| `chromeGpuPssKb` | {'int': 2200} |
| `chromeOtherPssKb` | {'int': 2200} |
| `chromeProcesses` | {'int': 2200} |
| `chromeProfiles` | {'int': 2200} |
| `chromeRendererMaxPssKb` | {'int': 2200} |
| `chromeRendererPssKb` | {'int': 2200} |
| `chromeRenderers` | {'int': 2200} |
| `chromeTabs` | {'int': 2200} |
| `chromeTabsProbedProfiles` | {'int': 2200} |
| `chromeUtilityPssKb` | {'int': 2200} |
| `desktopPssKb` | {'int': 2200} |
| `hostPssKb` | {'int': 2200} |
| `kind` | {'str': 2200} |
| `memAvailableKb` | {'int': 2200} |
| `memTotalKb` | {'int': 2200} |
| `otherPssKb` | {'int': 2200} |
| `processes` | {'int': 2200} |
| `pssFallbackProcesses` | {'int': 2200} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
