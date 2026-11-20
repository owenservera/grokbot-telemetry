# sandbox_telemetry_parse — 2026-11-20 13:14:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1727947 lines=3830
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3819 |
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
| `chromeBrowserPssKb` | {'int': 3819} |
| `chromeGpuPssKb` | {'int': 3819} |
| `chromeOtherPssKb` | {'int': 3819} |
| `chromeProcesses` | {'int': 3819} |
| `chromeProfiles` | {'int': 3819} |
| `chromeRendererMaxPssKb` | {'int': 3819} |
| `chromeRendererPssKb` | {'int': 3819} |
| `chromeRenderers` | {'int': 3819} |
| `chromeTabs` | {'int': 3819} |
| `chromeTabsProbedProfiles` | {'int': 3819} |
| `chromeUtilityPssKb` | {'int': 3819} |
| `desktopPssKb` | {'int': 3819} |
| `hostPssKb` | {'int': 3819} |
| `kind` | {'str': 3819} |
| `memAvailableKb` | {'int': 3819} |
| `memTotalKb` | {'int': 3819} |
| `otherPssKb` | {'int': 3819} |
| `processes` | {'int': 3819} |
| `pssFallbackProcesses` | {'int': 3819} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
