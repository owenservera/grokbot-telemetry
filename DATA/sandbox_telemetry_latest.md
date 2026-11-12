# sandbox_telemetry_parse — 2026-11-12 01:32:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1911001 lines=4231
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4222 |
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
| `chromeBrowserPssKb` | {'int': 4222} |
| `chromeGpuPssKb` | {'int': 4222} |
| `chromeOtherPssKb` | {'int': 4222} |
| `chromeProcesses` | {'int': 4222} |
| `chromeProfiles` | {'int': 4222} |
| `chromeRendererMaxPssKb` | {'int': 4222} |
| `chromeRendererPssKb` | {'int': 4222} |
| `chromeRenderers` | {'int': 4222} |
| `chromeTabs` | {'int': 4222} |
| `chromeTabsProbedProfiles` | {'int': 4222} |
| `chromeUtilityPssKb` | {'int': 4222} |
| `desktopPssKb` | {'int': 4222} |
| `hostPssKb` | {'int': 4222} |
| `kind` | {'str': 4222} |
| `memAvailableKb` | {'int': 4222} |
| `memTotalKb` | {'int': 4222} |
| `otherPssKb` | {'int': 4222} |
| `processes` | {'int': 4222} |
| `pssFallbackProcesses` | {'int': 4222} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
