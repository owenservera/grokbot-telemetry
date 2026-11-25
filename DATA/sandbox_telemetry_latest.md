# sandbox_telemetry_parse — 2026-11-25 20:25:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2909365 lines=6445
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6430 |
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
| `chromeBrowserPssKb` | {'int': 6430} |
| `chromeGpuPssKb` | {'int': 6430} |
| `chromeOtherPssKb` | {'int': 6430} |
| `chromeProcesses` | {'int': 6430} |
| `chromeProfiles` | {'int': 6430} |
| `chromeRendererMaxPssKb` | {'int': 6430} |
| `chromeRendererPssKb` | {'int': 6430} |
| `chromeRenderers` | {'int': 6430} |
| `chromeTabs` | {'int': 6430} |
| `chromeTabsProbedProfiles` | {'int': 6430} |
| `chromeUtilityPssKb` | {'int': 6430} |
| `desktopPssKb` | {'int': 6430} |
| `hostPssKb` | {'int': 6430} |
| `kind` | {'str': 6430} |
| `memAvailableKb` | {'int': 6430} |
| `memTotalKb` | {'int': 6430} |
| `otherPssKb` | {'int': 6430} |
| `processes` | {'int': 6430} |
| `pssFallbackProcesses` | {'int': 6430} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
