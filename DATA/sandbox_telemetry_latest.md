# sandbox_telemetry_parse — 2026-11-12 14:06:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2163049 lines=4788
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4779 |
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
| `chromeBrowserPssKb` | {'int': 4779} |
| `chromeGpuPssKb` | {'int': 4779} |
| `chromeOtherPssKb` | {'int': 4779} |
| `chromeProcesses` | {'int': 4779} |
| `chromeProfiles` | {'int': 4779} |
| `chromeRendererMaxPssKb` | {'int': 4779} |
| `chromeRendererPssKb` | {'int': 4779} |
| `chromeRenderers` | {'int': 4779} |
| `chromeTabs` | {'int': 4779} |
| `chromeTabsProbedProfiles` | {'int': 4779} |
| `chromeUtilityPssKb` | {'int': 4779} |
| `desktopPssKb` | {'int': 4779} |
| `hostPssKb` | {'int': 4779} |
| `kind` | {'str': 4779} |
| `memAvailableKb` | {'int': 4779} |
| `memTotalKb` | {'int': 4779} |
| `otherPssKb` | {'int': 4779} |
| `processes` | {'int': 4779} |
| `pssFallbackProcesses` | {'int': 4779} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
