# sandbox_telemetry_parse — 2026-11-27 06:51:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=292367 lines=653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 645 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 645} |
| `chromeGpuPssKb` | {'int': 645} |
| `chromeOtherPssKb` | {'int': 645} |
| `chromeProcesses` | {'int': 645} |
| `chromeProfiles` | {'int': 645} |
| `chromeRendererMaxPssKb` | {'int': 645} |
| `chromeRendererPssKb` | {'int': 645} |
| `chromeRenderers` | {'int': 645} |
| `chromeTabs` | {'int': 645} |
| `chromeTabsProbedProfiles` | {'int': 645} |
| `chromeUtilityPssKb` | {'int': 645} |
| `desktopPssKb` | {'int': 645} |
| `hostPssKb` | {'int': 645} |
| `kind` | {'str': 645} |
| `memAvailableKb` | {'int': 645} |
| `memTotalKb` | {'int': 645} |
| `otherPssKb` | {'int': 645} |
| `processes` | {'int': 645} |
| `pssFallbackProcesses` | {'int': 645} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
