# sandbox_telemetry_parse — 2026-11-28 01:28:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=674736 lines=1498
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1490 |
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
| `chromeBrowserPssKb` | {'int': 1490} |
| `chromeGpuPssKb` | {'int': 1490} |
| `chromeOtherPssKb` | {'int': 1490} |
| `chromeProcesses` | {'int': 1490} |
| `chromeProfiles` | {'int': 1490} |
| `chromeRendererMaxPssKb` | {'int': 1490} |
| `chromeRendererPssKb` | {'int': 1490} |
| `chromeRenderers` | {'int': 1490} |
| `chromeTabs` | {'int': 1490} |
| `chromeTabsProbedProfiles` | {'int': 1490} |
| `chromeUtilityPssKb` | {'int': 1490} |
| `desktopPssKb` | {'int': 1490} |
| `hostPssKb` | {'int': 1490} |
| `kind` | {'str': 1490} |
| `memAvailableKb` | {'int': 1490} |
| `memTotalKb` | {'int': 1490} |
| `otherPssKb` | {'int': 1490} |
| `processes` | {'int': 1490} |
| `pssFallbackProcesses` | {'int': 1490} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
