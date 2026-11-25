# sandbox_telemetry_parse — 2026-11-25 10:38:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2721721 lines=6030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6015 |
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
| `chromeBrowserPssKb` | {'int': 6015} |
| `chromeGpuPssKb` | {'int': 6015} |
| `chromeOtherPssKb` | {'int': 6015} |
| `chromeProcesses` | {'int': 6015} |
| `chromeProfiles` | {'int': 6015} |
| `chromeRendererMaxPssKb` | {'int': 6015} |
| `chromeRendererPssKb` | {'int': 6015} |
| `chromeRenderers` | {'int': 6015} |
| `chromeTabs` | {'int': 6015} |
| `chromeTabsProbedProfiles` | {'int': 6015} |
| `chromeUtilityPssKb` | {'int': 6015} |
| `desktopPssKb` | {'int': 6015} |
| `hostPssKb` | {'int': 6015} |
| `kind` | {'str': 6015} |
| `memAvailableKb` | {'int': 6015} |
| `memTotalKb` | {'int': 6015} |
| `otherPssKb` | {'int': 6015} |
| `processes` | {'int': 6015} |
| `pssFallbackProcesses` | {'int': 6015} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
