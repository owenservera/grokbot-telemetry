# sandbox_telemetry_parse — 2026-11-19 15:02:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1323000 lines=2933
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2924 |
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
| `chromeBrowserPssKb` | {'int': 2924} |
| `chromeGpuPssKb` | {'int': 2924} |
| `chromeOtherPssKb` | {'int': 2924} |
| `chromeProcesses` | {'int': 2924} |
| `chromeProfiles` | {'int': 2924} |
| `chromeRendererMaxPssKb` | {'int': 2924} |
| `chromeRendererPssKb` | {'int': 2924} |
| `chromeRenderers` | {'int': 2924} |
| `chromeTabs` | {'int': 2924} |
| `chromeTabsProbedProfiles` | {'int': 2924} |
| `chromeUtilityPssKb` | {'int': 2924} |
| `desktopPssKb` | {'int': 2924} |
| `hostPssKb` | {'int': 2924} |
| `kind` | {'str': 2924} |
| `memAvailableKb` | {'int': 2924} |
| `memTotalKb` | {'int': 2924} |
| `otherPssKb` | {'int': 2924} |
| `processes` | {'int': 2924} |
| `pssFallbackProcesses` | {'int': 2924} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
