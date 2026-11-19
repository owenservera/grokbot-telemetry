# sandbox_telemetry_parse — 2026-11-19 05:20:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1134397 lines=2516
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2507 |
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
| `chromeBrowserPssKb` | {'int': 2507} |
| `chromeGpuPssKb` | {'int': 2507} |
| `chromeOtherPssKb` | {'int': 2507} |
| `chromeProcesses` | {'int': 2507} |
| `chromeProfiles` | {'int': 2507} |
| `chromeRendererMaxPssKb` | {'int': 2507} |
| `chromeRendererPssKb` | {'int': 2507} |
| `chromeRenderers` | {'int': 2507} |
| `chromeTabs` | {'int': 2507} |
| `chromeTabsProbedProfiles` | {'int': 2507} |
| `chromeUtilityPssKb` | {'int': 2507} |
| `desktopPssKb` | {'int': 2507} |
| `hostPssKb` | {'int': 2507} |
| `kind` | {'str': 2507} |
| `memAvailableKb` | {'int': 2507} |
| `memTotalKb` | {'int': 2507} |
| `otherPssKb` | {'int': 2507} |
| `processes` | {'int': 2507} |
| `pssFallbackProcesses` | {'int': 2507} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
