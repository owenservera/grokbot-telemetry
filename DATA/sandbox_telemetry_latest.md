# sandbox_telemetry_parse — 2026-10-06 15:41:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=455282 lines=1003
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 998 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 998} |
| `chromeGpuPssKb` | {'int': 998} |
| `chromeOtherPssKb` | {'int': 998} |
| `chromeProcesses` | {'int': 998} |
| `chromeProfiles` | {'int': 998} |
| `chromeRendererMaxPssKb` | {'int': 998} |
| `chromeRendererPssKb` | {'int': 998} |
| `chromeRenderers` | {'int': 998} |
| `chromeTabs` | {'int': 998} |
| `chromeTabsProbedProfiles` | {'int': 998} |
| `chromeUtilityPssKb` | {'int': 998} |
| `desktopPssKb` | {'int': 998} |
| `hostPssKb` | {'int': 998} |
| `kind` | {'str': 998} |
| `memAvailableKb` | {'int': 998} |
| `memTotalKb` | {'int': 998} |
| `otherPssKb` | {'int': 998} |
| `processes` | {'int': 998} |
| `pssFallbackProcesses` | {'int': 998} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
