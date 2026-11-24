# sandbox_telemetry_parse — 2026-11-24 02:35:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2093883 lines=4642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4627 |
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
| `chromeBrowserPssKb` | {'int': 4627} |
| `chromeGpuPssKb` | {'int': 4627} |
| `chromeOtherPssKb` | {'int': 4627} |
| `chromeProcesses` | {'int': 4627} |
| `chromeProfiles` | {'int': 4627} |
| `chromeRendererMaxPssKb` | {'int': 4627} |
| `chromeRendererPssKb` | {'int': 4627} |
| `chromeRenderers` | {'int': 4627} |
| `chromeTabs` | {'int': 4627} |
| `chromeTabsProbedProfiles` | {'int': 4627} |
| `chromeUtilityPssKb` | {'int': 4627} |
| `desktopPssKb` | {'int': 4627} |
| `hostPssKb` | {'int': 4627} |
| `kind` | {'str': 4627} |
| `memAvailableKb` | {'int': 4627} |
| `memTotalKb` | {'int': 4627} |
| `otherPssKb` | {'int': 4627} |
| `processes` | {'int': 4627} |
| `pssFallbackProcesses` | {'int': 4627} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
