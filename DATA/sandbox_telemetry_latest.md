# sandbox_telemetry_parse — 2026-11-17 14:02:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=413838 lines=921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 914 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 914} |
| `chromeGpuPssKb` | {'int': 914} |
| `chromeOtherPssKb` | {'int': 914} |
| `chromeProcesses` | {'int': 914} |
| `chromeProfiles` | {'int': 914} |
| `chromeRendererMaxPssKb` | {'int': 914} |
| `chromeRendererPssKb` | {'int': 914} |
| `chromeRenderers` | {'int': 914} |
| `chromeTabs` | {'int': 914} |
| `chromeTabsProbedProfiles` | {'int': 914} |
| `chromeUtilityPssKb` | {'int': 914} |
| `desktopPssKb` | {'int': 914} |
| `hostPssKb` | {'int': 914} |
| `kind` | {'str': 914} |
| `memAvailableKb` | {'int': 914} |
| `memTotalKb` | {'int': 914} |
| `otherPssKb` | {'int': 914} |
| `processes` | {'int': 914} |
| `pssFallbackProcesses` | {'int': 914} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
