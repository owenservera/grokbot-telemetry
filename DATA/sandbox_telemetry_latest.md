# sandbox_telemetry_parse — 2026-11-24 03:04:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2102019 lines=4660
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4645 |
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
| `chromeBrowserPssKb` | {'int': 4645} |
| `chromeGpuPssKb` | {'int': 4645} |
| `chromeOtherPssKb` | {'int': 4645} |
| `chromeProcesses` | {'int': 4645} |
| `chromeProfiles` | {'int': 4645} |
| `chromeRendererMaxPssKb` | {'int': 4645} |
| `chromeRendererPssKb` | {'int': 4645} |
| `chromeRenderers` | {'int': 4645} |
| `chromeTabs` | {'int': 4645} |
| `chromeTabsProbedProfiles` | {'int': 4645} |
| `chromeUtilityPssKb` | {'int': 4645} |
| `desktopPssKb` | {'int': 4645} |
| `hostPssKb` | {'int': 4645} |
| `kind` | {'str': 4645} |
| `memAvailableKb` | {'int': 4645} |
| `memTotalKb` | {'int': 4645} |
| `otherPssKb` | {'int': 4645} |
| `processes` | {'int': 4645} |
| `pssFallbackProcesses` | {'int': 4645} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
