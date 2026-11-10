# sandbox_telemetry_parse — 2026-11-11 00:04:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1390668 lines=3081
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3072 |
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
| `chromeBrowserPssKb` | {'int': 3072} |
| `chromeGpuPssKb` | {'int': 3072} |
| `chromeOtherPssKb` | {'int': 3072} |
| `chromeProcesses` | {'int': 3072} |
| `chromeProfiles` | {'int': 3072} |
| `chromeRendererMaxPssKb` | {'int': 3072} |
| `chromeRendererPssKb` | {'int': 3072} |
| `chromeRenderers` | {'int': 3072} |
| `chromeTabs` | {'int': 3072} |
| `chromeTabsProbedProfiles` | {'int': 3072} |
| `chromeUtilityPssKb` | {'int': 3072} |
| `desktopPssKb` | {'int': 3072} |
| `hostPssKb` | {'int': 3072} |
| `kind` | {'str': 3072} |
| `memAvailableKb` | {'int': 3072} |
| `memTotalKb` | {'int': 3072} |
| `otherPssKb` | {'int': 3072} |
| `processes` | {'int': 3072} |
| `pssFallbackProcesses` | {'int': 3072} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
