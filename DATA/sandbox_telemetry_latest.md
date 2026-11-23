# sandbox_telemetry_parse — 2026-11-23 21:48:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1999787 lines=4434
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4419 |
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
| `chromeBrowserPssKb` | {'int': 4419} |
| `chromeGpuPssKb` | {'int': 4419} |
| `chromeOtherPssKb` | {'int': 4419} |
| `chromeProcesses` | {'int': 4419} |
| `chromeProfiles` | {'int': 4419} |
| `chromeRendererMaxPssKb` | {'int': 4419} |
| `chromeRendererPssKb` | {'int': 4419} |
| `chromeRenderers` | {'int': 4419} |
| `chromeTabs` | {'int': 4419} |
| `chromeTabsProbedProfiles` | {'int': 4419} |
| `chromeUtilityPssKb` | {'int': 4419} |
| `desktopPssKb` | {'int': 4419} |
| `hostPssKb` | {'int': 4419} |
| `kind` | {'str': 4419} |
| `memAvailableKb` | {'int': 4419} |
| `memTotalKb` | {'int': 4419} |
| `otherPssKb` | {'int': 4419} |
| `processes` | {'int': 4419} |
| `pssFallbackProcesses` | {'int': 4419} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
