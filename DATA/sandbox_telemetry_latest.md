# sandbox_telemetry_parse — 2026-11-12 07:37:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2028637 lines=4491
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4482 |
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
| `chromeBrowserPssKb` | {'int': 4482} |
| `chromeGpuPssKb` | {'int': 4482} |
| `chromeOtherPssKb` | {'int': 4482} |
| `chromeProcesses` | {'int': 4482} |
| `chromeProfiles` | {'int': 4482} |
| `chromeRendererMaxPssKb` | {'int': 4482} |
| `chromeRendererPssKb` | {'int': 4482} |
| `chromeRenderers` | {'int': 4482} |
| `chromeTabs` | {'int': 4482} |
| `chromeTabsProbedProfiles` | {'int': 4482} |
| `chromeUtilityPssKb` | {'int': 4482} |
| `desktopPssKb` | {'int': 4482} |
| `hostPssKb` | {'int': 4482} |
| `kind` | {'str': 4482} |
| `memAvailableKb` | {'int': 4482} |
| `memTotalKb` | {'int': 4482} |
| `otherPssKb` | {'int': 4482} |
| `processes` | {'int': 4482} |
| `pssFallbackProcesses` | {'int': 4482} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
