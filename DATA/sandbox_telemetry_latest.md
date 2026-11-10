# sandbox_telemetry_parse — 2026-11-10 11:17:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1112258 lines=2466
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2457 |
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
| `chromeBrowserPssKb` | {'int': 2457} |
| `chromeGpuPssKb` | {'int': 2457} |
| `chromeOtherPssKb` | {'int': 2457} |
| `chromeProcesses` | {'int': 2457} |
| `chromeProfiles` | {'int': 2457} |
| `chromeRendererMaxPssKb` | {'int': 2457} |
| `chromeRendererPssKb` | {'int': 2457} |
| `chromeRenderers` | {'int': 2457} |
| `chromeTabs` | {'int': 2457} |
| `chromeTabsProbedProfiles` | {'int': 2457} |
| `chromeUtilityPssKb` | {'int': 2457} |
| `desktopPssKb` | {'int': 2457} |
| `hostPssKb` | {'int': 2457} |
| `kind` | {'str': 2457} |
| `memAvailableKb` | {'int': 2457} |
| `memTotalKb` | {'int': 2457} |
| `otherPssKb` | {'int': 2457} |
| `processes` | {'int': 2457} |
| `pssFallbackProcesses` | {'int': 2457} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
