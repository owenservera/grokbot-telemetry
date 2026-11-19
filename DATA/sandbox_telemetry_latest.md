# sandbox_telemetry_parse — 2026-11-19 11:56:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1262371 lines=2799
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2790 |
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
| `chromeBrowserPssKb` | {'int': 2790} |
| `chromeGpuPssKb` | {'int': 2790} |
| `chromeOtherPssKb` | {'int': 2790} |
| `chromeProcesses` | {'int': 2790} |
| `chromeProfiles` | {'int': 2790} |
| `chromeRendererMaxPssKb` | {'int': 2790} |
| `chromeRendererPssKb` | {'int': 2790} |
| `chromeRenderers` | {'int': 2790} |
| `chromeTabs` | {'int': 2790} |
| `chromeTabsProbedProfiles` | {'int': 2790} |
| `chromeUtilityPssKb` | {'int': 2790} |
| `desktopPssKb` | {'int': 2790} |
| `hostPssKb` | {'int': 2790} |
| `kind` | {'str': 2790} |
| `memAvailableKb` | {'int': 2790} |
| `memTotalKb` | {'int': 2790} |
| `otherPssKb` | {'int': 2790} |
| `processes` | {'int': 2790} |
| `pssFallbackProcesses` | {'int': 2790} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
