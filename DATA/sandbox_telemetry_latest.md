# sandbox_telemetry_parse — 2026-11-19 15:58:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1340667 lines=2972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2963 |
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
| `chromeBrowserPssKb` | {'int': 2963} |
| `chromeGpuPssKb` | {'int': 2963} |
| `chromeOtherPssKb` | {'int': 2963} |
| `chromeProcesses` | {'int': 2963} |
| `chromeProfiles` | {'int': 2963} |
| `chromeRendererMaxPssKb` | {'int': 2963} |
| `chromeRendererPssKb` | {'int': 2963} |
| `chromeRenderers` | {'int': 2963} |
| `chromeTabs` | {'int': 2963} |
| `chromeTabsProbedProfiles` | {'int': 2963} |
| `chromeUtilityPssKb` | {'int': 2963} |
| `desktopPssKb` | {'int': 2963} |
| `hostPssKb` | {'int': 2963} |
| `kind` | {'str': 2963} |
| `memAvailableKb` | {'int': 2963} |
| `memTotalKb` | {'int': 2963} |
| `otherPssKb` | {'int': 2963} |
| `processes` | {'int': 2963} |
| `pssFallbackProcesses` | {'int': 2963} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
