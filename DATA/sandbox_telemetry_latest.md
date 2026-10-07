# sandbox_telemetry_parse — 2026-10-07 05:11:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=822085 lines=1807
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1802 |
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
| `chromeBrowserPssKb` | {'int': 1802} |
| `chromeGpuPssKb` | {'int': 1802} |
| `chromeOtherPssKb` | {'int': 1802} |
| `chromeProcesses` | {'int': 1802} |
| `chromeProfiles` | {'int': 1802} |
| `chromeRendererMaxPssKb` | {'int': 1802} |
| `chromeRendererPssKb` | {'int': 1802} |
| `chromeRenderers` | {'int': 1802} |
| `chromeTabs` | {'int': 1802} |
| `chromeTabsProbedProfiles` | {'int': 1802} |
| `chromeUtilityPssKb` | {'int': 1802} |
| `desktopPssKb` | {'int': 1802} |
| `hostPssKb` | {'int': 1802} |
| `kind` | {'str': 1802} |
| `memAvailableKb` | {'int': 1802} |
| `memTotalKb` | {'int': 1802} |
| `otherPssKb` | {'int': 1802} |
| `processes` | {'int': 1802} |
| `pssFallbackProcesses` | {'int': 1802} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
