# sandbox_telemetry_parse — 2026-11-20 02:56:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1547102 lines=3430
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3419 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3419} |
| `chromeGpuPssKb` | {'int': 3419} |
| `chromeOtherPssKb` | {'int': 3419} |
| `chromeProcesses` | {'int': 3419} |
| `chromeProfiles` | {'int': 3419} |
| `chromeRendererMaxPssKb` | {'int': 3419} |
| `chromeRendererPssKb` | {'int': 3419} |
| `chromeRenderers` | {'int': 3419} |
| `chromeTabs` | {'int': 3419} |
| `chromeTabsProbedProfiles` | {'int': 3419} |
| `chromeUtilityPssKb` | {'int': 3419} |
| `desktopPssKb` | {'int': 3419} |
| `hostPssKb` | {'int': 3419} |
| `kind` | {'str': 3419} |
| `memAvailableKb` | {'int': 3419} |
| `memTotalKb` | {'int': 3419} |
| `otherPssKb` | {'int': 3419} |
| `processes` | {'int': 3419} |
| `pssFallbackProcesses` | {'int': 3419} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
