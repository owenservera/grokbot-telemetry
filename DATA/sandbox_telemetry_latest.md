# sandbox_telemetry_parse — 2026-11-25 17:21:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2850140 lines=6314
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6299 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6299} |
| `chromeGpuPssKb` | {'int': 6299} |
| `chromeOtherPssKb` | {'int': 6299} |
| `chromeProcesses` | {'int': 6299} |
| `chromeProfiles` | {'int': 6299} |
| `chromeRendererMaxPssKb` | {'int': 6299} |
| `chromeRendererPssKb` | {'int': 6299} |
| `chromeRenderers` | {'int': 6299} |
| `chromeTabs` | {'int': 6299} |
| `chromeTabsProbedProfiles` | {'int': 6299} |
| `chromeUtilityPssKb` | {'int': 6299} |
| `desktopPssKb` | {'int': 6299} |
| `hostPssKb` | {'int': 6299} |
| `kind` | {'str': 6299} |
| `memAvailableKb` | {'int': 6299} |
| `memTotalKb` | {'int': 6299} |
| `otherPssKb` | {'int': 6299} |
| `processes` | {'int': 6299} |
| `pssFallbackProcesses` | {'int': 6299} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
