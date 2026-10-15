# sandbox_telemetry_parse — 2026-10-15 14:17:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=898494 lines=1992
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1987 |
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
| `chromeBrowserPssKb` | {'int': 1987} |
| `chromeGpuPssKb` | {'int': 1987} |
| `chromeOtherPssKb` | {'int': 1987} |
| `chromeProcesses` | {'int': 1987} |
| `chromeProfiles` | {'int': 1987} |
| `chromeRendererMaxPssKb` | {'int': 1987} |
| `chromeRendererPssKb` | {'int': 1987} |
| `chromeRenderers` | {'int': 1987} |
| `chromeTabs` | {'int': 1987} |
| `chromeTabsProbedProfiles` | {'int': 1987} |
| `chromeUtilityPssKb` | {'int': 1987} |
| `desktopPssKb` | {'int': 1987} |
| `hostPssKb` | {'int': 1987} |
| `kind` | {'str': 1987} |
| `memAvailableKb` | {'int': 1987} |
| `memTotalKb` | {'int': 1987} |
| `otherPssKb` | {'int': 1987} |
| `processes` | {'int': 1987} |
| `pssFallbackProcesses` | {'int': 1987} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
