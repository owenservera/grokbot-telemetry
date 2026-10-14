# sandbox_telemetry_parse — 2026-10-14 19:30:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=449658 lines=999
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 994 |
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
| `chromeBrowserPssKb` | {'int': 994} |
| `chromeGpuPssKb` | {'int': 994} |
| `chromeOtherPssKb` | {'int': 994} |
| `chromeProcesses` | {'int': 994} |
| `chromeProfiles` | {'int': 994} |
| `chromeRendererMaxPssKb` | {'int': 994} |
| `chromeRendererPssKb` | {'int': 994} |
| `chromeRenderers` | {'int': 994} |
| `chromeTabs` | {'int': 994} |
| `chromeTabsProbedProfiles` | {'int': 994} |
| `chromeUtilityPssKb` | {'int': 994} |
| `desktopPssKb` | {'int': 994} |
| `hostPssKb` | {'int': 994} |
| `kind` | {'str': 994} |
| `memAvailableKb` | {'int': 994} |
| `memTotalKb` | {'int': 994} |
| `otherPssKb` | {'int': 994} |
| `processes` | {'int': 994} |
| `pssFallbackProcesses` | {'int': 994} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
