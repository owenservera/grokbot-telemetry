# sandbox_telemetry_parse — 2026-11-24 20:08:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2430924 lines=5387
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5372 |
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
| `chromeBrowserPssKb` | {'int': 5372} |
| `chromeGpuPssKb` | {'int': 5372} |
| `chromeOtherPssKb` | {'int': 5372} |
| `chromeProcesses` | {'int': 5372} |
| `chromeProfiles` | {'int': 5372} |
| `chromeRendererMaxPssKb` | {'int': 5372} |
| `chromeRendererPssKb` | {'int': 5372} |
| `chromeRenderers` | {'int': 5372} |
| `chromeTabs` | {'int': 5372} |
| `chromeTabsProbedProfiles` | {'int': 5372} |
| `chromeUtilityPssKb` | {'int': 5372} |
| `desktopPssKb` | {'int': 5372} |
| `hostPssKb` | {'int': 5372} |
| `kind` | {'str': 5372} |
| `memAvailableKb` | {'int': 5372} |
| `memTotalKb` | {'int': 5372} |
| `otherPssKb` | {'int': 5372} |
| `processes` | {'int': 5372} |
| `pssFallbackProcesses` | {'int': 5372} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
