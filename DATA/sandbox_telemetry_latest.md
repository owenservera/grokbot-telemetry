# sandbox_telemetry_parse — 2026-11-25 12:21:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2754271 lines=6102
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6087 |
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
| `chromeBrowserPssKb` | {'int': 6087} |
| `chromeGpuPssKb` | {'int': 6087} |
| `chromeOtherPssKb` | {'int': 6087} |
| `chromeProcesses` | {'int': 6087} |
| `chromeProfiles` | {'int': 6087} |
| `chromeRendererMaxPssKb` | {'int': 6087} |
| `chromeRendererPssKb` | {'int': 6087} |
| `chromeRenderers` | {'int': 6087} |
| `chromeTabs` | {'int': 6087} |
| `chromeTabsProbedProfiles` | {'int': 6087} |
| `chromeUtilityPssKb` | {'int': 6087} |
| `desktopPssKb` | {'int': 6087} |
| `hostPssKb` | {'int': 6087} |
| `kind` | {'str': 6087} |
| `memAvailableKb` | {'int': 6087} |
| `memTotalKb` | {'int': 6087} |
| `otherPssKb` | {'int': 6087} |
| `processes` | {'int': 6087} |
| `pssFallbackProcesses` | {'int': 6087} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
