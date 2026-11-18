# sandbox_telemetry_parse — 2026-11-18 23:32:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1025411 lines=2275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2266 |
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
| `chromeBrowserPssKb` | {'int': 2266} |
| `chromeGpuPssKb` | {'int': 2266} |
| `chromeOtherPssKb` | {'int': 2266} |
| `chromeProcesses` | {'int': 2266} |
| `chromeProfiles` | {'int': 2266} |
| `chromeRendererMaxPssKb` | {'int': 2266} |
| `chromeRendererPssKb` | {'int': 2266} |
| `chromeRenderers` | {'int': 2266} |
| `chromeTabs` | {'int': 2266} |
| `chromeTabsProbedProfiles` | {'int': 2266} |
| `chromeUtilityPssKb` | {'int': 2266} |
| `desktopPssKb` | {'int': 2266} |
| `hostPssKb` | {'int': 2266} |
| `kind` | {'str': 2266} |
| `memAvailableKb` | {'int': 2266} |
| `memTotalKb` | {'int': 2266} |
| `otherPssKb` | {'int': 2266} |
| `processes` | {'int': 2266} |
| `pssFallbackProcesses` | {'int': 2266} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
