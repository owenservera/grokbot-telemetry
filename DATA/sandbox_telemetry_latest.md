# sandbox_telemetry_parse — 2026-10-14 03:42:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=77662 lines=176
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 171 |
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
| `chromeBrowserPssKb` | {'int': 171} |
| `chromeGpuPssKb` | {'int': 171} |
| `chromeOtherPssKb` | {'int': 171} |
| `chromeProcesses` | {'int': 171} |
| `chromeProfiles` | {'int': 171} |
| `chromeRendererMaxPssKb` | {'int': 171} |
| `chromeRendererPssKb` | {'int': 171} |
| `chromeRenderers` | {'int': 171} |
| `chromeTabs` | {'int': 171} |
| `chromeTabsProbedProfiles` | {'int': 171} |
| `chromeUtilityPssKb` | {'int': 171} |
| `desktopPssKb` | {'int': 171} |
| `hostPssKb` | {'int': 171} |
| `kind` | {'str': 171} |
| `memAvailableKb` | {'int': 171} |
| `memTotalKb` | {'int': 171} |
| `otherPssKb` | {'int': 171} |
| `processes` | {'int': 171} |
| `pssFallbackProcesses` | {'int': 171} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
