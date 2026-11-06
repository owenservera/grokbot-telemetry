# sandbox_telemetry_parse — 2026-11-06 12:07:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=5067 lines=17
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 10 |
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
| `chromeBrowserPssKb` | {'int': 10} |
| `chromeGpuPssKb` | {'int': 10} |
| `chromeOtherPssKb` | {'int': 10} |
| `chromeProcesses` | {'int': 10} |
| `chromeProfiles` | {'int': 10} |
| `chromeRendererMaxPssKb` | {'int': 10} |
| `chromeRendererPssKb` | {'int': 10} |
| `chromeRenderers` | {'int': 10} |
| `chromeTabs` | {'int': 10} |
| `chromeTabsProbedProfiles` | {'int': 10} |
| `chromeUtilityPssKb` | {'int': 10} |
| `desktopPssKb` | {'int': 10} |
| `hostPssKb` | {'int': 10} |
| `kind` | {'str': 10} |
| `memAvailableKb` | {'int': 10} |
| `memTotalKb` | {'int': 10} |
| `otherPssKb` | {'int': 10} |
| `processes` | {'int': 10} |
| `pssFallbackProcesses` | {'int': 10} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
