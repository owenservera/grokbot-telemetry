# sandbox_telemetry_parse — 2026-11-20 16:39:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1800043 lines=3991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3978 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3978} |
| `chromeGpuPssKb` | {'int': 3978} |
| `chromeOtherPssKb` | {'int': 3978} |
| `chromeProcesses` | {'int': 3978} |
| `chromeProfiles` | {'int': 3978} |
| `chromeRendererMaxPssKb` | {'int': 3978} |
| `chromeRendererPssKb` | {'int': 3978} |
| `chromeRenderers` | {'int': 3978} |
| `chromeTabs` | {'int': 3978} |
| `chromeTabsProbedProfiles` | {'int': 3978} |
| `chromeUtilityPssKb` | {'int': 3978} |
| `desktopPssKb` | {'int': 3978} |
| `hostPssKb` | {'int': 3978} |
| `kind` | {'str': 3978} |
| `memAvailableKb` | {'int': 3978} |
| `memTotalKb` | {'int': 3978} |
| `otherPssKb` | {'int': 3978} |
| `processes` | {'int': 3978} |
| `pssFallbackProcesses` | {'int': 3978} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
