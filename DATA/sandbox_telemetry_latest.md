# sandbox_telemetry_parse — 2026-11-20 15:04:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1766855 lines=3916
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3905 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3905} |
| `chromeGpuPssKb` | {'int': 3905} |
| `chromeOtherPssKb` | {'int': 3905} |
| `chromeProcesses` | {'int': 3905} |
| `chromeProfiles` | {'int': 3905} |
| `chromeRendererMaxPssKb` | {'int': 3905} |
| `chromeRendererPssKb` | {'int': 3905} |
| `chromeRenderers` | {'int': 3905} |
| `chromeTabs` | {'int': 3905} |
| `chromeTabsProbedProfiles` | {'int': 3905} |
| `chromeUtilityPssKb` | {'int': 3905} |
| `desktopPssKb` | {'int': 3905} |
| `hostPssKb` | {'int': 3905} |
| `kind` | {'str': 3905} |
| `memAvailableKb` | {'int': 3905} |
| `memTotalKb` | {'int': 3905} |
| `otherPssKb` | {'int': 3905} |
| `processes` | {'int': 3905} |
| `pssFallbackProcesses` | {'int': 3905} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
