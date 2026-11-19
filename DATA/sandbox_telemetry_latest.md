# sandbox_telemetry_parse — 2026-11-19 11:13:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1246097 lines=2763
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2754 |
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
| `chromeBrowserPssKb` | {'int': 2754} |
| `chromeGpuPssKb` | {'int': 2754} |
| `chromeOtherPssKb` | {'int': 2754} |
| `chromeProcesses` | {'int': 2754} |
| `chromeProfiles` | {'int': 2754} |
| `chromeRendererMaxPssKb` | {'int': 2754} |
| `chromeRendererPssKb` | {'int': 2754} |
| `chromeRenderers` | {'int': 2754} |
| `chromeTabs` | {'int': 2754} |
| `chromeTabsProbedProfiles` | {'int': 2754} |
| `chromeUtilityPssKb` | {'int': 2754} |
| `desktopPssKb` | {'int': 2754} |
| `hostPssKb` | {'int': 2754} |
| `kind` | {'str': 2754} |
| `memAvailableKb` | {'int': 2754} |
| `memTotalKb` | {'int': 2754} |
| `otherPssKb` | {'int': 2754} |
| `processes` | {'int': 2754} |
| `pssFallbackProcesses` | {'int': 2754} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
