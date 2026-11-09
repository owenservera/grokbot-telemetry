# sandbox_telemetry_parse — 2026-11-09 19:29:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=810533 lines=1799
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1790 |
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
| `chromeBrowserPssKb` | {'int': 1790} |
| `chromeGpuPssKb` | {'int': 1790} |
| `chromeOtherPssKb` | {'int': 1790} |
| `chromeProcesses` | {'int': 1790} |
| `chromeProfiles` | {'int': 1790} |
| `chromeRendererMaxPssKb` | {'int': 1790} |
| `chromeRendererPssKb` | {'int': 1790} |
| `chromeRenderers` | {'int': 1790} |
| `chromeTabs` | {'int': 1790} |
| `chromeTabsProbedProfiles` | {'int': 1790} |
| `chromeUtilityPssKb` | {'int': 1790} |
| `desktopPssKb` | {'int': 1790} |
| `hostPssKb` | {'int': 1790} |
| `kind` | {'str': 1790} |
| `memAvailableKb` | {'int': 1790} |
| `memTotalKb` | {'int': 1790} |
| `otherPssKb` | {'int': 1790} |
| `processes` | {'int': 1790} |
| `pssFallbackProcesses` | {'int': 1790} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
