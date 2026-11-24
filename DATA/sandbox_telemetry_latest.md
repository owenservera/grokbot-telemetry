# sandbox_telemetry_parse — 2026-11-24 23:11:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2491087 lines=5520
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5505 |
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
| `chromeBrowserPssKb` | {'int': 5505} |
| `chromeGpuPssKb` | {'int': 5505} |
| `chromeOtherPssKb` | {'int': 5505} |
| `chromeProcesses` | {'int': 5505} |
| `chromeProfiles` | {'int': 5505} |
| `chromeRendererMaxPssKb` | {'int': 5505} |
| `chromeRendererPssKb` | {'int': 5505} |
| `chromeRenderers` | {'int': 5505} |
| `chromeTabs` | {'int': 5505} |
| `chromeTabsProbedProfiles` | {'int': 5505} |
| `chromeUtilityPssKb` | {'int': 5505} |
| `desktopPssKb` | {'int': 5505} |
| `hostPssKb` | {'int': 5505} |
| `kind` | {'str': 5505} |
| `memAvailableKb` | {'int': 5505} |
| `memTotalKb` | {'int': 5505} |
| `otherPssKb` | {'int': 5505} |
| `processes` | {'int': 5505} |
| `pssFallbackProcesses` | {'int': 5505} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
