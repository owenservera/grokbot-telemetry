# sandbox_telemetry_parse — 2026-11-26 22:57:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=120916 lines=274
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 266 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 266} |
| `chromeGpuPssKb` | {'int': 266} |
| `chromeOtherPssKb` | {'int': 266} |
| `chromeProcesses` | {'int': 266} |
| `chromeProfiles` | {'int': 266} |
| `chromeRendererMaxPssKb` | {'int': 266} |
| `chromeRendererPssKb` | {'int': 266} |
| `chromeRenderers` | {'int': 266} |
| `chromeTabs` | {'int': 266} |
| `chromeTabsProbedProfiles` | {'int': 266} |
| `chromeUtilityPssKb` | {'int': 266} |
| `desktopPssKb` | {'int': 266} |
| `hostPssKb` | {'int': 266} |
| `kind` | {'str': 266} |
| `memAvailableKb` | {'int': 266} |
| `memTotalKb` | {'int': 266} |
| `otherPssKb` | {'int': 266} |
| `processes` | {'int': 266} |
| `pssFallbackProcesses` | {'int': 266} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
