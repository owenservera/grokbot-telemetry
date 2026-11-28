# sandbox_telemetry_parse — 2026-11-28 07:29:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=790117 lines=1753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1745 |
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
| `chromeBrowserPssKb` | {'int': 1745} |
| `chromeGpuPssKb` | {'int': 1745} |
| `chromeOtherPssKb` | {'int': 1745} |
| `chromeProcesses` | {'int': 1745} |
| `chromeProfiles` | {'int': 1745} |
| `chromeRendererMaxPssKb` | {'int': 1745} |
| `chromeRendererPssKb` | {'int': 1745} |
| `chromeRenderers` | {'int': 1745} |
| `chromeTabs` | {'int': 1745} |
| `chromeTabsProbedProfiles` | {'int': 1745} |
| `chromeUtilityPssKb` | {'int': 1745} |
| `desktopPssKb` | {'int': 1745} |
| `hostPssKb` | {'int': 1745} |
| `kind` | {'str': 1745} |
| `memAvailableKb` | {'int': 1745} |
| `memTotalKb` | {'int': 1745} |
| `otherPssKb` | {'int': 1745} |
| `processes` | {'int': 1745} |
| `pssFallbackProcesses` | {'int': 1745} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
