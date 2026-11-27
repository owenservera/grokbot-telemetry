# sandbox_telemetry_parse — 2026-11-27 12:10:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=406356 lines=905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 897 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 897} |
| `chromeGpuPssKb` | {'int': 897} |
| `chromeOtherPssKb` | {'int': 897} |
| `chromeProcesses` | {'int': 897} |
| `chromeProfiles` | {'int': 897} |
| `chromeRendererMaxPssKb` | {'int': 897} |
| `chromeRendererPssKb` | {'int': 897} |
| `chromeRenderers` | {'int': 897} |
| `chromeTabs` | {'int': 897} |
| `chromeTabsProbedProfiles` | {'int': 897} |
| `chromeUtilityPssKb` | {'int': 897} |
| `desktopPssKb` | {'int': 897} |
| `hostPssKb` | {'int': 897} |
| `kind` | {'str': 897} |
| `memAvailableKb` | {'int': 897} |
| `memTotalKb` | {'int': 897} |
| `otherPssKb` | {'int': 897} |
| `processes` | {'int': 897} |
| `pssFallbackProcesses` | {'int': 897} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
