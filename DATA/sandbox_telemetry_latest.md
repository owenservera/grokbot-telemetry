# sandbox_telemetry_parse — 2026-11-12 00:00:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1879302 lines=4161
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4152 |
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
| `chromeBrowserPssKb` | {'int': 4152} |
| `chromeGpuPssKb` | {'int': 4152} |
| `chromeOtherPssKb` | {'int': 4152} |
| `chromeProcesses` | {'int': 4152} |
| `chromeProfiles` | {'int': 4152} |
| `chromeRendererMaxPssKb` | {'int': 4152} |
| `chromeRendererPssKb` | {'int': 4152} |
| `chromeRenderers` | {'int': 4152} |
| `chromeTabs` | {'int': 4152} |
| `chromeTabsProbedProfiles` | {'int': 4152} |
| `chromeUtilityPssKb` | {'int': 4152} |
| `desktopPssKb` | {'int': 4152} |
| `hostPssKb` | {'int': 4152} |
| `kind` | {'str': 4152} |
| `memAvailableKb` | {'int': 4152} |
| `memTotalKb` | {'int': 4152} |
| `otherPssKb` | {'int': 4152} |
| `processes` | {'int': 4152} |
| `pssFallbackProcesses` | {'int': 4152} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
