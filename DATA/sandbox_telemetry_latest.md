# sandbox_telemetry_parse — 2026-11-23 23:52:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2042786 lines=4529
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4514 |
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
| `chromeBrowserPssKb` | {'int': 4514} |
| `chromeGpuPssKb` | {'int': 4514} |
| `chromeOtherPssKb` | {'int': 4514} |
| `chromeProcesses` | {'int': 4514} |
| `chromeProfiles` | {'int': 4514} |
| `chromeRendererMaxPssKb` | {'int': 4514} |
| `chromeRendererPssKb` | {'int': 4514} |
| `chromeRenderers` | {'int': 4514} |
| `chromeTabs` | {'int': 4514} |
| `chromeTabsProbedProfiles` | {'int': 4514} |
| `chromeUtilityPssKb` | {'int': 4514} |
| `desktopPssKb` | {'int': 4514} |
| `hostPssKb` | {'int': 4514} |
| `kind` | {'str': 4514} |
| `memAvailableKb` | {'int': 4514} |
| `memTotalKb` | {'int': 4514} |
| `otherPssKb` | {'int': 4514} |
| `processes` | {'int': 4514} |
| `pssFallbackProcesses` | {'int': 4514} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
