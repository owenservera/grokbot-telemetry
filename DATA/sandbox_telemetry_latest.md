# sandbox_telemetry_parse — 2026-11-17 01:55:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=203164 lines=455
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 448 |
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
| `chromeBrowserPssKb` | {'int': 448} |
| `chromeGpuPssKb` | {'int': 448} |
| `chromeOtherPssKb` | {'int': 448} |
| `chromeProcesses` | {'int': 448} |
| `chromeProfiles` | {'int': 448} |
| `chromeRendererMaxPssKb` | {'int': 448} |
| `chromeRendererPssKb` | {'int': 448} |
| `chromeRenderers` | {'int': 448} |
| `chromeTabs` | {'int': 448} |
| `chromeTabsProbedProfiles` | {'int': 448} |
| `chromeUtilityPssKb` | {'int': 448} |
| `desktopPssKb` | {'int': 448} |
| `hostPssKb` | {'int': 448} |
| `kind` | {'str': 448} |
| `memAvailableKb` | {'int': 448} |
| `memTotalKb` | {'int': 448} |
| `otherPssKb` | {'int': 448} |
| `processes` | {'int': 448} |
| `pssFallbackProcesses` | {'int': 448} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
