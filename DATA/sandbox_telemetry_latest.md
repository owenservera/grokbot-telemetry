# sandbox_telemetry_parse — 2026-11-28 06:49:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=775648 lines=1721
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1713 |
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
| `chromeBrowserPssKb` | {'int': 1713} |
| `chromeGpuPssKb` | {'int': 1713} |
| `chromeOtherPssKb` | {'int': 1713} |
| `chromeProcesses` | {'int': 1713} |
| `chromeProfiles` | {'int': 1713} |
| `chromeRendererMaxPssKb` | {'int': 1713} |
| `chromeRendererPssKb` | {'int': 1713} |
| `chromeRenderers` | {'int': 1713} |
| `chromeTabs` | {'int': 1713} |
| `chromeTabsProbedProfiles` | {'int': 1713} |
| `chromeUtilityPssKb` | {'int': 1713} |
| `desktopPssKb` | {'int': 1713} |
| `hostPssKb` | {'int': 1713} |
| `kind` | {'str': 1713} |
| `memAvailableKb` | {'int': 1713} |
| `memTotalKb` | {'int': 1713} |
| `otherPssKb` | {'int': 1713} |
| `processes` | {'int': 1713} |
| `pssFallbackProcesses` | {'int': 1713} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
