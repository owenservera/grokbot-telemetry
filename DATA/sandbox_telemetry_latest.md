# sandbox_telemetry_parse — 2026-10-15 04:58:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=676562 lines=1501
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1496 |
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
| `chromeBrowserPssKb` | {'int': 1496} |
| `chromeGpuPssKb` | {'int': 1496} |
| `chromeOtherPssKb` | {'int': 1496} |
| `chromeProcesses` | {'int': 1496} |
| `chromeProfiles` | {'int': 1496} |
| `chromeRendererMaxPssKb` | {'int': 1496} |
| `chromeRendererPssKb` | {'int': 1496} |
| `chromeRenderers` | {'int': 1496} |
| `chromeTabs` | {'int': 1496} |
| `chromeTabsProbedProfiles` | {'int': 1496} |
| `chromeUtilityPssKb` | {'int': 1496} |
| `desktopPssKb` | {'int': 1496} |
| `hostPssKb` | {'int': 1496} |
| `kind` | {'str': 1496} |
| `memAvailableKb` | {'int': 1496} |
| `memTotalKb` | {'int': 1496} |
| `otherPssKb` | {'int': 1496} |
| `processes` | {'int': 1496} |
| `pssFallbackProcesses` | {'int': 1496} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
