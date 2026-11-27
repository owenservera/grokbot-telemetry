# sandbox_telemetry_parse — 2026-11-27 22:28:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=618181 lines=1373
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1365 |
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
| `chromeBrowserPssKb` | {'int': 1365} |
| `chromeGpuPssKb` | {'int': 1365} |
| `chromeOtherPssKb` | {'int': 1365} |
| `chromeProcesses` | {'int': 1365} |
| `chromeProfiles` | {'int': 1365} |
| `chromeRendererMaxPssKb` | {'int': 1365} |
| `chromeRendererPssKb` | {'int': 1365} |
| `chromeRenderers` | {'int': 1365} |
| `chromeTabs` | {'int': 1365} |
| `chromeTabsProbedProfiles` | {'int': 1365} |
| `chromeUtilityPssKb` | {'int': 1365} |
| `desktopPssKb` | {'int': 1365} |
| `hostPssKb` | {'int': 1365} |
| `kind` | {'str': 1365} |
| `memAvailableKb` | {'int': 1365} |
| `memTotalKb` | {'int': 1365} |
| `otherPssKb` | {'int': 1365} |
| `processes` | {'int': 1365} |
| `pssFallbackProcesses` | {'int': 1365} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
