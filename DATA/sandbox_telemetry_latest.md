# sandbox_telemetry_parse — 2026-11-24 11:12:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2258923 lines=5007
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4992 |
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
| `chromeBrowserPssKb` | {'int': 4992} |
| `chromeGpuPssKb` | {'int': 4992} |
| `chromeOtherPssKb` | {'int': 4992} |
| `chromeProcesses` | {'int': 4992} |
| `chromeProfiles` | {'int': 4992} |
| `chromeRendererMaxPssKb` | {'int': 4992} |
| `chromeRendererPssKb` | {'int': 4992} |
| `chromeRenderers` | {'int': 4992} |
| `chromeTabs` | {'int': 4992} |
| `chromeTabsProbedProfiles` | {'int': 4992} |
| `chromeUtilityPssKb` | {'int': 4992} |
| `desktopPssKb` | {'int': 4992} |
| `hostPssKb` | {'int': 4992} |
| `kind` | {'str': 4992} |
| `memAvailableKb` | {'int': 4992} |
| `memTotalKb` | {'int': 4992} |
| `otherPssKb` | {'int': 4992} |
| `processes` | {'int': 4992} |
| `pssFallbackProcesses` | {'int': 4992} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
