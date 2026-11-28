# sandbox_telemetry_parse — 2026-11-28 18:32:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1005984 lines=2230
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2222 |
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
| `chromeBrowserPssKb` | {'int': 2222} |
| `chromeGpuPssKb` | {'int': 2222} |
| `chromeOtherPssKb` | {'int': 2222} |
| `chromeProcesses` | {'int': 2222} |
| `chromeProfiles` | {'int': 2222} |
| `chromeRendererMaxPssKb` | {'int': 2222} |
| `chromeRendererPssKb` | {'int': 2222} |
| `chromeRenderers` | {'int': 2222} |
| `chromeTabs` | {'int': 2222} |
| `chromeTabsProbedProfiles` | {'int': 2222} |
| `chromeUtilityPssKb` | {'int': 2222} |
| `desktopPssKb` | {'int': 2222} |
| `hostPssKb` | {'int': 2222} |
| `kind` | {'str': 2222} |
| `memAvailableKb` | {'int': 2222} |
| `memTotalKb` | {'int': 2222} |
| `otherPssKb` | {'int': 2222} |
| `processes` | {'int': 2222} |
| `pssFallbackProcesses` | {'int': 2222} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
