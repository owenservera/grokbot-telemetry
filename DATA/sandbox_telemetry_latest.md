# sandbox_telemetry_parse — 2026-11-12 23:49:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2378582 lines=5264
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5255 |
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
| `chromeBrowserPssKb` | {'int': 5255} |
| `chromeGpuPssKb` | {'int': 5255} |
| `chromeOtherPssKb` | {'int': 5255} |
| `chromeProcesses` | {'int': 5255} |
| `chromeProfiles` | {'int': 5255} |
| `chromeRendererMaxPssKb` | {'int': 5255} |
| `chromeRendererPssKb` | {'int': 5255} |
| `chromeRenderers` | {'int': 5255} |
| `chromeTabs` | {'int': 5255} |
| `chromeTabsProbedProfiles` | {'int': 5255} |
| `chromeUtilityPssKb` | {'int': 5255} |
| `desktopPssKb` | {'int': 5255} |
| `hostPssKb` | {'int': 5255} |
| `kind` | {'str': 5255} |
| `memAvailableKb` | {'int': 5255} |
| `memTotalKb` | {'int': 5255} |
| `otherPssKb` | {'int': 5255} |
| `processes` | {'int': 5255} |
| `pssFallbackProcesses` | {'int': 5255} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
