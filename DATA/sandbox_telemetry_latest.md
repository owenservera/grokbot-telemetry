# sandbox_telemetry_parse — 2026-11-25 20:21:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2907557 lines=6441
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6426 |
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
| `chromeBrowserPssKb` | {'int': 6426} |
| `chromeGpuPssKb` | {'int': 6426} |
| `chromeOtherPssKb` | {'int': 6426} |
| `chromeProcesses` | {'int': 6426} |
| `chromeProfiles` | {'int': 6426} |
| `chromeRendererMaxPssKb` | {'int': 6426} |
| `chromeRendererPssKb` | {'int': 6426} |
| `chromeRenderers` | {'int': 6426} |
| `chromeTabs` | {'int': 6426} |
| `chromeTabsProbedProfiles` | {'int': 6426} |
| `chromeUtilityPssKb` | {'int': 6426} |
| `desktopPssKb` | {'int': 6426} |
| `hostPssKb` | {'int': 6426} |
| `kind` | {'str': 6426} |
| `memAvailableKb` | {'int': 6426} |
| `memTotalKb` | {'int': 6426} |
| `otherPssKb` | {'int': 6426} |
| `processes` | {'int': 6426} |
| `pssFallbackProcesses` | {'int': 6426} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
