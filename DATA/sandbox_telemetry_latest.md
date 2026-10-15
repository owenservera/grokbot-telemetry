# sandbox_telemetry_parse — 2026-10-15 14:24:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=900754 lines=1997
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1992 |
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
| `chromeBrowserPssKb` | {'int': 1992} |
| `chromeGpuPssKb` | {'int': 1992} |
| `chromeOtherPssKb` | {'int': 1992} |
| `chromeProcesses` | {'int': 1992} |
| `chromeProfiles` | {'int': 1992} |
| `chromeRendererMaxPssKb` | {'int': 1992} |
| `chromeRendererPssKb` | {'int': 1992} |
| `chromeRenderers` | {'int': 1992} |
| `chromeTabs` | {'int': 1992} |
| `chromeTabsProbedProfiles` | {'int': 1992} |
| `chromeUtilityPssKb` | {'int': 1992} |
| `desktopPssKb` | {'int': 1992} |
| `hostPssKb` | {'int': 1992} |
| `kind` | {'str': 1992} |
| `memAvailableKb` | {'int': 1992} |
| `memTotalKb` | {'int': 1992} |
| `otherPssKb` | {'int': 1992} |
| `processes` | {'int': 1992} |
| `pssFallbackProcesses` | {'int': 1992} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
