# sandbox_telemetry_parse — 2026-10-26 15:51:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=5820 lines=17
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 12 |
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
| `chromeBrowserPssKb` | {'int': 12} |
| `chromeGpuPssKb` | {'int': 12} |
| `chromeOtherPssKb` | {'int': 12} |
| `chromeProcesses` | {'int': 12} |
| `chromeProfiles` | {'int': 12} |
| `chromeRendererMaxPssKb` | {'int': 12} |
| `chromeRendererPssKb` | {'int': 12} |
| `chromeRenderers` | {'int': 12} |
| `chromeTabs` | {'int': 12} |
| `chromeTabsProbedProfiles` | {'int': 12} |
| `chromeUtilityPssKb` | {'int': 12} |
| `desktopPssKb` | {'int': 12} |
| `hostPssKb` | {'int': 12} |
| `kind` | {'str': 12} |
| `memAvailableKb` | {'int': 12} |
| `memTotalKb` | {'int': 12} |
| `otherPssKb` | {'int': 12} |
| `processes` | {'int': 12} |
| `pssFallbackProcesses` | {'int': 12} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
