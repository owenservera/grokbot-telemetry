# sandbox_telemetry_parse — 2026-11-24 17:43:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2382920 lines=5281
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5266 |
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
| `chromeBrowserPssKb` | {'int': 5266} |
| `chromeGpuPssKb` | {'int': 5266} |
| `chromeOtherPssKb` | {'int': 5266} |
| `chromeProcesses` | {'int': 5266} |
| `chromeProfiles` | {'int': 5266} |
| `chromeRendererMaxPssKb` | {'int': 5266} |
| `chromeRendererPssKb` | {'int': 5266} |
| `chromeRenderers` | {'int': 5266} |
| `chromeTabs` | {'int': 5266} |
| `chromeTabsProbedProfiles` | {'int': 5266} |
| `chromeUtilityPssKb` | {'int': 5266} |
| `desktopPssKb` | {'int': 5266} |
| `hostPssKb` | {'int': 5266} |
| `kind` | {'str': 5266} |
| `memAvailableKb` | {'int': 5266} |
| `memTotalKb` | {'int': 5266} |
| `otherPssKb` | {'int': 5266} |
| `processes` | {'int': 5266} |
| `pssFallbackProcesses` | {'int': 5266} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
