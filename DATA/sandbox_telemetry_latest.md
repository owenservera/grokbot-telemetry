# sandbox_telemetry_parse — 2026-11-26 20:47:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=79775 lines=183
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 175 |
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
| `chromeBrowserPssKb` | {'int': 175} |
| `chromeGpuPssKb` | {'int': 175} |
| `chromeOtherPssKb` | {'int': 175} |
| `chromeProcesses` | {'int': 175} |
| `chromeProfiles` | {'int': 175} |
| `chromeRendererMaxPssKb` | {'int': 175} |
| `chromeRendererPssKb` | {'int': 175} |
| `chromeRenderers` | {'int': 175} |
| `chromeTabs` | {'int': 175} |
| `chromeTabsProbedProfiles` | {'int': 175} |
| `chromeUtilityPssKb` | {'int': 175} |
| `desktopPssKb` | {'int': 175} |
| `hostPssKb` | {'int': 175} |
| `kind` | {'str': 175} |
| `memAvailableKb` | {'int': 175} |
| `memTotalKb` | {'int': 175} |
| `otherPssKb` | {'int': 175} |
| `processes` | {'int': 175} |
| `pssFallbackProcesses` | {'int': 175} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
