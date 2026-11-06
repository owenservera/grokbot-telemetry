# sandbox_telemetry_parse — 2026-11-06 15:21:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=62498 lines=144
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 137 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 137} |
| `chromeGpuPssKb` | {'int': 137} |
| `chromeOtherPssKb` | {'int': 137} |
| `chromeProcesses` | {'int': 137} |
| `chromeProfiles` | {'int': 137} |
| `chromeRendererMaxPssKb` | {'int': 137} |
| `chromeRendererPssKb` | {'int': 137} |
| `chromeRenderers` | {'int': 137} |
| `chromeTabs` | {'int': 137} |
| `chromeTabsProbedProfiles` | {'int': 137} |
| `chromeUtilityPssKb` | {'int': 137} |
| `desktopPssKb` | {'int': 137} |
| `hostPssKb` | {'int': 137} |
| `kind` | {'str': 137} |
| `memAvailableKb` | {'int': 137} |
| `memTotalKb` | {'int': 137} |
| `otherPssKb` | {'int': 137} |
| `processes` | {'int': 137} |
| `pssFallbackProcesses` | {'int': 137} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
