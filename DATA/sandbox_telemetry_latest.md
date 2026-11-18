# sandbox_telemetry_parse — 2026-11-18 07:50:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=735334 lines=1632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1625 |
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
| `chromeBrowserPssKb` | {'int': 1625} |
| `chromeGpuPssKb` | {'int': 1625} |
| `chromeOtherPssKb` | {'int': 1625} |
| `chromeProcesses` | {'int': 1625} |
| `chromeProfiles` | {'int': 1625} |
| `chromeRendererMaxPssKb` | {'int': 1625} |
| `chromeRendererPssKb` | {'int': 1625} |
| `chromeRenderers` | {'int': 1625} |
| `chromeTabs` | {'int': 1625} |
| `chromeTabsProbedProfiles` | {'int': 1625} |
| `chromeUtilityPssKb` | {'int': 1625} |
| `desktopPssKb` | {'int': 1625} |
| `hostPssKb` | {'int': 1625} |
| `kind` | {'str': 1625} |
| `memAvailableKb` | {'int': 1625} |
| `memTotalKb` | {'int': 1625} |
| `otherPssKb` | {'int': 1625} |
| `processes` | {'int': 1625} |
| `pssFallbackProcesses` | {'int': 1625} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
