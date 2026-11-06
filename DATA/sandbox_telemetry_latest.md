# sandbox_telemetry_parse — 2026-11-07 00:49:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=240008 lines=538
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 529 |
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
| `chromeBrowserPssKb` | {'int': 529} |
| `chromeGpuPssKb` | {'int': 529} |
| `chromeOtherPssKb` | {'int': 529} |
| `chromeProcesses` | {'int': 529} |
| `chromeProfiles` | {'int': 529} |
| `chromeRendererMaxPssKb` | {'int': 529} |
| `chromeRendererPssKb` | {'int': 529} |
| `chromeRenderers` | {'int': 529} |
| `chromeTabs` | {'int': 529} |
| `chromeTabsProbedProfiles` | {'int': 529} |
| `chromeUtilityPssKb` | {'int': 529} |
| `desktopPssKb` | {'int': 529} |
| `hostPssKb` | {'int': 529} |
| `kind` | {'str': 529} |
| `memAvailableKb` | {'int': 529} |
| `memTotalKb` | {'int': 529} |
| `otherPssKb` | {'int': 529} |
| `processes` | {'int': 529} |
| `pssFallbackProcesses` | {'int': 529} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
