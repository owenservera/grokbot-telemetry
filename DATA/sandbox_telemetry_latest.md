# sandbox_telemetry_parse — 2026-11-07 01:44:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=259469 lines=581
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 572 |
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
| `chromeBrowserPssKb` | {'int': 572} |
| `chromeGpuPssKb` | {'int': 572} |
| `chromeOtherPssKb` | {'int': 572} |
| `chromeProcesses` | {'int': 572} |
| `chromeProfiles` | {'int': 572} |
| `chromeRendererMaxPssKb` | {'int': 572} |
| `chromeRendererPssKb` | {'int': 572} |
| `chromeRenderers` | {'int': 572} |
| `chromeTabs` | {'int': 572} |
| `chromeTabsProbedProfiles` | {'int': 572} |
| `chromeUtilityPssKb` | {'int': 572} |
| `desktopPssKb` | {'int': 572} |
| `hostPssKb` | {'int': 572} |
| `kind` | {'str': 572} |
| `memAvailableKb` | {'int': 572} |
| `memTotalKb` | {'int': 572} |
| `otherPssKb` | {'int': 572} |
| `processes` | {'int': 572} |
| `pssFallbackProcesses` | {'int': 572} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
