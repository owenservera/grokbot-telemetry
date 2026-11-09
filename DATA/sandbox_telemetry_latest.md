# sandbox_telemetry_parse — 2026-11-09 12:26:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=655686 lines=1457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1448 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1448} |
| `chromeGpuPssKb` | {'int': 1448} |
| `chromeOtherPssKb` | {'int': 1448} |
| `chromeProcesses` | {'int': 1448} |
| `chromeProfiles` | {'int': 1448} |
| `chromeRendererMaxPssKb` | {'int': 1448} |
| `chromeRendererPssKb` | {'int': 1448} |
| `chromeRenderers` | {'int': 1448} |
| `chromeTabs` | {'int': 1448} |
| `chromeTabsProbedProfiles` | {'int': 1448} |
| `chromeUtilityPssKb` | {'int': 1448} |
| `desktopPssKb` | {'int': 1448} |
| `hostPssKb` | {'int': 1448} |
| `kind` | {'str': 1448} |
| `memAvailableKb` | {'int': 1448} |
| `memTotalKb` | {'int': 1448} |
| `otherPssKb` | {'int': 1448} |
| `processes` | {'int': 1448} |
| `pssFallbackProcesses` | {'int': 1448} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
