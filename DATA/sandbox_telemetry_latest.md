# sandbox_telemetry_parse — 2026-11-10 13:42:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1162521 lines=2577
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2568 |
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
| `chromeBrowserPssKb` | {'int': 2568} |
| `chromeGpuPssKb` | {'int': 2568} |
| `chromeOtherPssKb` | {'int': 2568} |
| `chromeProcesses` | {'int': 2568} |
| `chromeProfiles` | {'int': 2568} |
| `chromeRendererMaxPssKb` | {'int': 2568} |
| `chromeRendererPssKb` | {'int': 2568} |
| `chromeRenderers` | {'int': 2568} |
| `chromeTabs` | {'int': 2568} |
| `chromeTabsProbedProfiles` | {'int': 2568} |
| `chromeUtilityPssKb` | {'int': 2568} |
| `desktopPssKb` | {'int': 2568} |
| `hostPssKb` | {'int': 2568} |
| `kind` | {'str': 2568} |
| `memAvailableKb` | {'int': 2568} |
| `memTotalKb` | {'int': 2568} |
| `otherPssKb` | {'int': 2568} |
| `processes` | {'int': 2568} |
| `pssFallbackProcesses` | {'int': 2568} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
