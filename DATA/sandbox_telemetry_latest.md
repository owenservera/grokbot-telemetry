# sandbox_telemetry_parse — 2026-10-14 02:23:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=44666 lines=103
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 98 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 98} |
| `chromeGpuPssKb` | {'int': 98} |
| `chromeOtherPssKb` | {'int': 98} |
| `chromeProcesses` | {'int': 98} |
| `chromeProfiles` | {'int': 98} |
| `chromeRendererMaxPssKb` | {'int': 98} |
| `chromeRendererPssKb` | {'int': 98} |
| `chromeRenderers` | {'int': 98} |
| `chromeTabs` | {'int': 98} |
| `chromeTabsProbedProfiles` | {'int': 98} |
| `chromeUtilityPssKb` | {'int': 98} |
| `desktopPssKb` | {'int': 98} |
| `hostPssKb` | {'int': 98} |
| `kind` | {'str': 98} |
| `memAvailableKb` | {'int': 98} |
| `memTotalKb` | {'int': 98} |
| `otherPssKb` | {'int': 98} |
| `processes` | {'int': 98} |
| `pssFallbackProcesses` | {'int': 98} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
