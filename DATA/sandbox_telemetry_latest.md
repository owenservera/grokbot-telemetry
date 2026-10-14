# sandbox_telemetry_parse — 2026-10-14 11:50:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=268858 lines=599
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 594 |
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
| `chromeBrowserPssKb` | {'int': 594} |
| `chromeGpuPssKb` | {'int': 594} |
| `chromeOtherPssKb` | {'int': 594} |
| `chromeProcesses` | {'int': 594} |
| `chromeProfiles` | {'int': 594} |
| `chromeRendererMaxPssKb` | {'int': 594} |
| `chromeRendererPssKb` | {'int': 594} |
| `chromeRenderers` | {'int': 594} |
| `chromeTabs` | {'int': 594} |
| `chromeTabsProbedProfiles` | {'int': 594} |
| `chromeUtilityPssKb` | {'int': 594} |
| `desktopPssKb` | {'int': 594} |
| `hostPssKb` | {'int': 594} |
| `kind` | {'str': 594} |
| `memAvailableKb` | {'int': 594} |
| `memTotalKb` | {'int': 594} |
| `otherPssKb` | {'int': 594} |
| `processes` | {'int': 594} |
| `pssFallbackProcesses` | {'int': 594} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
