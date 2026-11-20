# sandbox_telemetry_parse — 2026-11-20 04:28:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1572414 lines=3486
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3475 |
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
| `chromeBrowserPssKb` | {'int': 3475} |
| `chromeGpuPssKb` | {'int': 3475} |
| `chromeOtherPssKb` | {'int': 3475} |
| `chromeProcesses` | {'int': 3475} |
| `chromeProfiles` | {'int': 3475} |
| `chromeRendererMaxPssKb` | {'int': 3475} |
| `chromeRendererPssKb` | {'int': 3475} |
| `chromeRenderers` | {'int': 3475} |
| `chromeTabs` | {'int': 3475} |
| `chromeTabsProbedProfiles` | {'int': 3475} |
| `chromeUtilityPssKb` | {'int': 3475} |
| `desktopPssKb` | {'int': 3475} |
| `hostPssKb` | {'int': 3475} |
| `kind` | {'str': 3475} |
| `memAvailableKb` | {'int': 3475} |
| `memTotalKb` | {'int': 3475} |
| `otherPssKb` | {'int': 3475} |
| `processes` | {'int': 3475} |
| `pssFallbackProcesses` | {'int': 3475} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
