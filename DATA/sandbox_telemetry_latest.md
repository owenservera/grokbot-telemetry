# sandbox_telemetry_parse — 2026-11-16 22:56:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=152963 lines=344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 337 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 337} |
| `chromeGpuPssKb` | {'int': 337} |
| `chromeOtherPssKb` | {'int': 337} |
| `chromeProcesses` | {'int': 337} |
| `chromeProfiles` | {'int': 337} |
| `chromeRendererMaxPssKb` | {'int': 337} |
| `chromeRendererPssKb` | {'int': 337} |
| `chromeRenderers` | {'int': 337} |
| `chromeTabs` | {'int': 337} |
| `chromeTabsProbedProfiles` | {'int': 337} |
| `chromeUtilityPssKb` | {'int': 337} |
| `desktopPssKb` | {'int': 337} |
| `hostPssKb` | {'int': 337} |
| `kind` | {'str': 337} |
| `memAvailableKb` | {'int': 337} |
| `memTotalKb` | {'int': 337} |
| `otherPssKb` | {'int': 337} |
| `processes` | {'int': 337} |
| `pssFallbackProcesses` | {'int': 337} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
