# sandbox_telemetry_parse — 2026-11-26 09:13:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3179866 lines=7043
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7028 |
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
| `chromeBrowserPssKb` | {'int': 7028} |
| `chromeGpuPssKb` | {'int': 7028} |
| `chromeOtherPssKb` | {'int': 7028} |
| `chromeProcesses` | {'int': 7028} |
| `chromeProfiles` | {'int': 7028} |
| `chromeRendererMaxPssKb` | {'int': 7028} |
| `chromeRendererPssKb` | {'int': 7028} |
| `chromeRenderers` | {'int': 7028} |
| `chromeTabs` | {'int': 7028} |
| `chromeTabsProbedProfiles` | {'int': 7028} |
| `chromeUtilityPssKb` | {'int': 7028} |
| `desktopPssKb` | {'int': 7028} |
| `hostPssKb` | {'int': 7028} |
| `kind` | {'str': 7028} |
| `memAvailableKb` | {'int': 7028} |
| `memTotalKb` | {'int': 7028} |
| `otherPssKb` | {'int': 7028} |
| `processes` | {'int': 7028} |
| `pssFallbackProcesses` | {'int': 7028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
