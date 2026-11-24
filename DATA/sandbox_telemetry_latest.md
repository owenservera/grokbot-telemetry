# sandbox_telemetry_parse — 2026-11-24 04:25:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2127785 lines=4717
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4702 |
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
| `chromeBrowserPssKb` | {'int': 4702} |
| `chromeGpuPssKb` | {'int': 4702} |
| `chromeOtherPssKb` | {'int': 4702} |
| `chromeProcesses` | {'int': 4702} |
| `chromeProfiles` | {'int': 4702} |
| `chromeRendererMaxPssKb` | {'int': 4702} |
| `chromeRendererPssKb` | {'int': 4702} |
| `chromeRenderers` | {'int': 4702} |
| `chromeTabs` | {'int': 4702} |
| `chromeTabsProbedProfiles` | {'int': 4702} |
| `chromeUtilityPssKb` | {'int': 4702} |
| `desktopPssKb` | {'int': 4702} |
| `hostPssKb` | {'int': 4702} |
| `kind` | {'str': 4702} |
| `memAvailableKb` | {'int': 4702} |
| `memTotalKb` | {'int': 4702} |
| `otherPssKb` | {'int': 4702} |
| `processes` | {'int': 4702} |
| `pssFallbackProcesses` | {'int': 4702} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
