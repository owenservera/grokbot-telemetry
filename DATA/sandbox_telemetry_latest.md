# sandbox_telemetry_parse — 2026-11-26 01:27:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3011125 lines=6670
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6655 |
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
| `chromeBrowserPssKb` | {'int': 6655} |
| `chromeGpuPssKb` | {'int': 6655} |
| `chromeOtherPssKb` | {'int': 6655} |
| `chromeProcesses` | {'int': 6655} |
| `chromeProfiles` | {'int': 6655} |
| `chromeRendererMaxPssKb` | {'int': 6655} |
| `chromeRendererPssKb` | {'int': 6655} |
| `chromeRenderers` | {'int': 6655} |
| `chromeTabs` | {'int': 6655} |
| `chromeTabsProbedProfiles` | {'int': 6655} |
| `chromeUtilityPssKb` | {'int': 6655} |
| `desktopPssKb` | {'int': 6655} |
| `hostPssKb` | {'int': 6655} |
| `kind` | {'str': 6655} |
| `memAvailableKb` | {'int': 6655} |
| `memTotalKb` | {'int': 6655} |
| `otherPssKb` | {'int': 6655} |
| `processes` | {'int': 6655} |
| `pssFallbackProcesses` | {'int': 6655} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
