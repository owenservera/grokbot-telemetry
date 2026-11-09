# sandbox_telemetry_parse — 2026-11-09 19:58:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=818228 lines=1816
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1807 |
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
| `chromeBrowserPssKb` | {'int': 1807} |
| `chromeGpuPssKb` | {'int': 1807} |
| `chromeOtherPssKb` | {'int': 1807} |
| `chromeProcesses` | {'int': 1807} |
| `chromeProfiles` | {'int': 1807} |
| `chromeRendererMaxPssKb` | {'int': 1807} |
| `chromeRendererPssKb` | {'int': 1807} |
| `chromeRenderers` | {'int': 1807} |
| `chromeTabs` | {'int': 1807} |
| `chromeTabsProbedProfiles` | {'int': 1807} |
| `chromeUtilityPssKb` | {'int': 1807} |
| `desktopPssKb` | {'int': 1807} |
| `hostPssKb` | {'int': 1807} |
| `kind` | {'str': 1807} |
| `memAvailableKb` | {'int': 1807} |
| `memTotalKb` | {'int': 1807} |
| `otherPssKb` | {'int': 1807} |
| `processes` | {'int': 1807} |
| `pssFallbackProcesses` | {'int': 1807} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
