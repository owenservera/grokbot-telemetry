# sandbox_telemetry_parse — 2026-11-25 23:53:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2982182 lines=6606
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6591 |
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
| `chromeBrowserPssKb` | {'int': 6591} |
| `chromeGpuPssKb` | {'int': 6591} |
| `chromeOtherPssKb` | {'int': 6591} |
| `chromeProcesses` | {'int': 6591} |
| `chromeProfiles` | {'int': 6591} |
| `chromeRendererMaxPssKb` | {'int': 6591} |
| `chromeRendererPssKb` | {'int': 6591} |
| `chromeRenderers` | {'int': 6591} |
| `chromeTabs` | {'int': 6591} |
| `chromeTabsProbedProfiles` | {'int': 6591} |
| `chromeUtilityPssKb` | {'int': 6591} |
| `desktopPssKb` | {'int': 6591} |
| `hostPssKb` | {'int': 6591} |
| `kind` | {'str': 6591} |
| `memAvailableKb` | {'int': 6591} |
| `memTotalKb` | {'int': 6591} |
| `otherPssKb` | {'int': 6591} |
| `processes` | {'int': 6591} |
| `pssFallbackProcesses` | {'int': 6591} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
