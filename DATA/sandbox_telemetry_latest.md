# sandbox_telemetry_parse — 2026-11-23 23:12:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2031475 lines=4504
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4489 |
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
| `chromeBrowserPssKb` | {'int': 4489} |
| `chromeGpuPssKb` | {'int': 4489} |
| `chromeOtherPssKb` | {'int': 4489} |
| `chromeProcesses` | {'int': 4489} |
| `chromeProfiles` | {'int': 4489} |
| `chromeRendererMaxPssKb` | {'int': 4489} |
| `chromeRendererPssKb` | {'int': 4489} |
| `chromeRenderers` | {'int': 4489} |
| `chromeTabs` | {'int': 4489} |
| `chromeTabsProbedProfiles` | {'int': 4489} |
| `chromeUtilityPssKb` | {'int': 4489} |
| `desktopPssKb` | {'int': 4489} |
| `hostPssKb` | {'int': 4489} |
| `kind` | {'str': 4489} |
| `memAvailableKb` | {'int': 4489} |
| `memTotalKb` | {'int': 4489} |
| `otherPssKb` | {'int': 4489} |
| `processes` | {'int': 4489} |
| `pssFallbackProcesses` | {'int': 4489} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
