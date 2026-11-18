# sandbox_telemetry_parse — 2026-11-18 14:39:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=858319 lines=1904
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1897 |
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
| `chromeBrowserPssKb` | {'int': 1897} |
| `chromeGpuPssKb` | {'int': 1897} |
| `chromeOtherPssKb` | {'int': 1897} |
| `chromeProcesses` | {'int': 1897} |
| `chromeProfiles` | {'int': 1897} |
| `chromeRendererMaxPssKb` | {'int': 1897} |
| `chromeRendererPssKb` | {'int': 1897} |
| `chromeRenderers` | {'int': 1897} |
| `chromeTabs` | {'int': 1897} |
| `chromeTabsProbedProfiles` | {'int': 1897} |
| `chromeUtilityPssKb` | {'int': 1897} |
| `desktopPssKb` | {'int': 1897} |
| `hostPssKb` | {'int': 1897} |
| `kind` | {'str': 1897} |
| `memAvailableKb` | {'int': 1897} |
| `memTotalKb` | {'int': 1897} |
| `otherPssKb` | {'int': 1897} |
| `processes` | {'int': 1897} |
| `pssFallbackProcesses` | {'int': 1897} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
