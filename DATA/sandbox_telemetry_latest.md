# sandbox_telemetry_parse — 2026-11-11 13:37:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1653918 lines=3663
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3654 |
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
| `chromeBrowserPssKb` | {'int': 3654} |
| `chromeGpuPssKb` | {'int': 3654} |
| `chromeOtherPssKb` | {'int': 3654} |
| `chromeProcesses` | {'int': 3654} |
| `chromeProfiles` | {'int': 3654} |
| `chromeRendererMaxPssKb` | {'int': 3654} |
| `chromeRendererPssKb` | {'int': 3654} |
| `chromeRenderers` | {'int': 3654} |
| `chromeTabs` | {'int': 3654} |
| `chromeTabsProbedProfiles` | {'int': 3654} |
| `chromeUtilityPssKb` | {'int': 3654} |
| `desktopPssKb` | {'int': 3654} |
| `hostPssKb` | {'int': 3654} |
| `kind` | {'str': 3654} |
| `memAvailableKb` | {'int': 3654} |
| `memTotalKb` | {'int': 3654} |
| `otherPssKb` | {'int': 3654} |
| `processes` | {'int': 3654} |
| `pssFallbackProcesses` | {'int': 3654} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
