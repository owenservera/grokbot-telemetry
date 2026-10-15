# sandbox_telemetry_parse — 2026-10-15 13:28:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=881318 lines=1954
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1949 |
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
| `chromeBrowserPssKb` | {'int': 1949} |
| `chromeGpuPssKb` | {'int': 1949} |
| `chromeOtherPssKb` | {'int': 1949} |
| `chromeProcesses` | {'int': 1949} |
| `chromeProfiles` | {'int': 1949} |
| `chromeRendererMaxPssKb` | {'int': 1949} |
| `chromeRendererPssKb` | {'int': 1949} |
| `chromeRenderers` | {'int': 1949} |
| `chromeTabs` | {'int': 1949} |
| `chromeTabsProbedProfiles` | {'int': 1949} |
| `chromeUtilityPssKb` | {'int': 1949} |
| `desktopPssKb` | {'int': 1949} |
| `hostPssKb` | {'int': 1949} |
| `kind` | {'str': 1949} |
| `memAvailableKb` | {'int': 1949} |
| `memTotalKb` | {'int': 1949} |
| `otherPssKb` | {'int': 1949} |
| `processes` | {'int': 1949} |
| `pssFallbackProcesses` | {'int': 1949} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
