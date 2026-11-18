# sandbox_telemetry_parse — 2026-11-18 01:36:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=623191 lines=1384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1377 |
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
| `chromeBrowserPssKb` | {'int': 1377} |
| `chromeGpuPssKb` | {'int': 1377} |
| `chromeOtherPssKb` | {'int': 1377} |
| `chromeProcesses` | {'int': 1377} |
| `chromeProfiles` | {'int': 1377} |
| `chromeRendererMaxPssKb` | {'int': 1377} |
| `chromeRendererPssKb` | {'int': 1377} |
| `chromeRenderers` | {'int': 1377} |
| `chromeTabs` | {'int': 1377} |
| `chromeTabsProbedProfiles` | {'int': 1377} |
| `chromeUtilityPssKb` | {'int': 1377} |
| `desktopPssKb` | {'int': 1377} |
| `hostPssKb` | {'int': 1377} |
| `kind` | {'str': 1377} |
| `memAvailableKb` | {'int': 1377} |
| `memTotalKb` | {'int': 1377} |
| `otherPssKb` | {'int': 1377} |
| `processes` | {'int': 1377} |
| `pssFallbackProcesses` | {'int': 1377} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
