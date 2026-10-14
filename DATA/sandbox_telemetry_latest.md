# sandbox_telemetry_parse — 2026-10-14 13:17:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=303662 lines=676
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 671 |
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
| `chromeBrowserPssKb` | {'int': 671} |
| `chromeGpuPssKb` | {'int': 671} |
| `chromeOtherPssKb` | {'int': 671} |
| `chromeProcesses` | {'int': 671} |
| `chromeProfiles` | {'int': 671} |
| `chromeRendererMaxPssKb` | {'int': 671} |
| `chromeRendererPssKb` | {'int': 671} |
| `chromeRenderers` | {'int': 671} |
| `chromeTabs` | {'int': 671} |
| `chromeTabsProbedProfiles` | {'int': 671} |
| `chromeUtilityPssKb` | {'int': 671} |
| `desktopPssKb` | {'int': 671} |
| `hostPssKb` | {'int': 671} |
| `kind` | {'str': 671} |
| `memAvailableKb` | {'int': 671} |
| `memTotalKb` | {'int': 671} |
| `otherPssKb` | {'int': 671} |
| `processes` | {'int': 671} |
| `pssFallbackProcesses` | {'int': 671} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
