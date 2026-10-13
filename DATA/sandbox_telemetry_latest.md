# sandbox_telemetry_parse — 2026-10-14 01:50:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=31106 lines=73
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 68 |
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
| `chromeBrowserPssKb` | {'int': 68} |
| `chromeGpuPssKb` | {'int': 68} |
| `chromeOtherPssKb` | {'int': 68} |
| `chromeProcesses` | {'int': 68} |
| `chromeProfiles` | {'int': 68} |
| `chromeRendererMaxPssKb` | {'int': 68} |
| `chromeRendererPssKb` | {'int': 68} |
| `chromeRenderers` | {'int': 68} |
| `chromeTabs` | {'int': 68} |
| `chromeTabsProbedProfiles` | {'int': 68} |
| `chromeUtilityPssKb` | {'int': 68} |
| `desktopPssKb` | {'int': 68} |
| `hostPssKb` | {'int': 68} |
| `kind` | {'str': 68} |
| `memAvailableKb` | {'int': 68} |
| `memTotalKb` | {'int': 68} |
| `otherPssKb` | {'int': 68} |
| `processes` | {'int': 68} |
| `pssFallbackProcesses` | {'int': 68} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
