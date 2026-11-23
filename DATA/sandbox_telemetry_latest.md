# sandbox_telemetry_parse — 2026-11-23 20:53:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1983041 lines=4397
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4382 |
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
| `chromeBrowserPssKb` | {'int': 4382} |
| `chromeGpuPssKb` | {'int': 4382} |
| `chromeOtherPssKb` | {'int': 4382} |
| `chromeProcesses` | {'int': 4382} |
| `chromeProfiles` | {'int': 4382} |
| `chromeRendererMaxPssKb` | {'int': 4382} |
| `chromeRendererPssKb` | {'int': 4382} |
| `chromeRenderers` | {'int': 4382} |
| `chromeTabs` | {'int': 4382} |
| `chromeTabsProbedProfiles` | {'int': 4382} |
| `chromeUtilityPssKb` | {'int': 4382} |
| `desktopPssKb` | {'int': 4382} |
| `hostPssKb` | {'int': 4382} |
| `kind` | {'str': 4382} |
| `memAvailableKb` | {'int': 4382} |
| `memTotalKb` | {'int': 4382} |
| `otherPssKb` | {'int': 4382} |
| `processes` | {'int': 4382} |
| `pssFallbackProcesses` | {'int': 4382} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
