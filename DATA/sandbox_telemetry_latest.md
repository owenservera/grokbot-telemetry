# sandbox_telemetry_parse — 2026-10-06 13:57:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=408314 lines=900
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 895 |
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
| `chromeBrowserPssKb` | {'int': 895} |
| `chromeGpuPssKb` | {'int': 895} |
| `chromeOtherPssKb` | {'int': 895} |
| `chromeProcesses` | {'int': 895} |
| `chromeProfiles` | {'int': 895} |
| `chromeRendererMaxPssKb` | {'int': 895} |
| `chromeRendererPssKb` | {'int': 895} |
| `chromeRenderers` | {'int': 895} |
| `chromeTabs` | {'int': 895} |
| `chromeTabsProbedProfiles` | {'int': 895} |
| `chromeUtilityPssKb` | {'int': 895} |
| `desktopPssKb` | {'int': 895} |
| `hostPssKb` | {'int': 895} |
| `kind` | {'str': 895} |
| `memAvailableKb` | {'int': 895} |
| `memTotalKb` | {'int': 895} |
| `otherPssKb` | {'int': 895} |
| `processes` | {'int': 895} |
| `pssFallbackProcesses` | {'int': 895} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
