# sandbox_telemetry_parse — 2026-11-07 02:49:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=279369 lines=625
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 616 |
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
| `chromeBrowserPssKb` | {'int': 616} |
| `chromeGpuPssKb` | {'int': 616} |
| `chromeOtherPssKb` | {'int': 616} |
| `chromeProcesses` | {'int': 616} |
| `chromeProfiles` | {'int': 616} |
| `chromeRendererMaxPssKb` | {'int': 616} |
| `chromeRendererPssKb` | {'int': 616} |
| `chromeRenderers` | {'int': 616} |
| `chromeTabs` | {'int': 616} |
| `chromeTabsProbedProfiles` | {'int': 616} |
| `chromeUtilityPssKb` | {'int': 616} |
| `desktopPssKb` | {'int': 616} |
| `hostPssKb` | {'int': 616} |
| `kind` | {'str': 616} |
| `memAvailableKb` | {'int': 616} |
| `memTotalKb` | {'int': 616} |
| `otherPssKb` | {'int': 616} |
| `processes` | {'int': 616} |
| `pssFallbackProcesses` | {'int': 616} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
