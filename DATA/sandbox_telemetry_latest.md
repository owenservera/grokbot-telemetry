# sandbox_telemetry_parse — 2026-11-23 15:31:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1893869 lines=4200
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4185 |
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
| `chromeBrowserPssKb` | {'int': 4185} |
| `chromeGpuPssKb` | {'int': 4185} |
| `chromeOtherPssKb` | {'int': 4185} |
| `chromeProcesses` | {'int': 4185} |
| `chromeProfiles` | {'int': 4185} |
| `chromeRendererMaxPssKb` | {'int': 4185} |
| `chromeRendererPssKb` | {'int': 4185} |
| `chromeRenderers` | {'int': 4185} |
| `chromeTabs` | {'int': 4185} |
| `chromeTabsProbedProfiles` | {'int': 4185} |
| `chromeUtilityPssKb` | {'int': 4185} |
| `desktopPssKb` | {'int': 4185} |
| `hostPssKb` | {'int': 4185} |
| `kind` | {'str': 4185} |
| `memAvailableKb` | {'int': 4185} |
| `memTotalKb` | {'int': 4185} |
| `otherPssKb` | {'int': 4185} |
| `processes` | {'int': 4185} |
| `pssFallbackProcesses` | {'int': 4185} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
