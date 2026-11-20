# sandbox_telemetry_parse — 2026-11-20 11:56:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1701716 lines=3772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3761 |
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
| `chromeBrowserPssKb` | {'int': 3761} |
| `chromeGpuPssKb` | {'int': 3761} |
| `chromeOtherPssKb` | {'int': 3761} |
| `chromeProcesses` | {'int': 3761} |
| `chromeProfiles` | {'int': 3761} |
| `chromeRendererMaxPssKb` | {'int': 3761} |
| `chromeRendererPssKb` | {'int': 3761} |
| `chromeRenderers` | {'int': 3761} |
| `chromeTabs` | {'int': 3761} |
| `chromeTabsProbedProfiles` | {'int': 3761} |
| `chromeUtilityPssKb` | {'int': 3761} |
| `desktopPssKb` | {'int': 3761} |
| `hostPssKb` | {'int': 3761} |
| `kind` | {'str': 3761} |
| `memAvailableKb` | {'int': 3761} |
| `memTotalKb` | {'int': 3761} |
| `otherPssKb` | {'int': 3761} |
| `processes` | {'int': 3761} |
| `pssFallbackProcesses` | {'int': 3761} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
