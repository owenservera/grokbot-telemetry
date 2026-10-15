# sandbox_telemetry_parse — 2026-10-15 16:53:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=958610 lines=2125
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2120 |
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
| `chromeBrowserPssKb` | {'int': 2120} |
| `chromeGpuPssKb` | {'int': 2120} |
| `chromeOtherPssKb` | {'int': 2120} |
| `chromeProcesses` | {'int': 2120} |
| `chromeProfiles` | {'int': 2120} |
| `chromeRendererMaxPssKb` | {'int': 2120} |
| `chromeRendererPssKb` | {'int': 2120} |
| `chromeRenderers` | {'int': 2120} |
| `chromeTabs` | {'int': 2120} |
| `chromeTabsProbedProfiles` | {'int': 2120} |
| `chromeUtilityPssKb` | {'int': 2120} |
| `desktopPssKb` | {'int': 2120} |
| `hostPssKb` | {'int': 2120} |
| `kind` | {'str': 2120} |
| `memAvailableKb` | {'int': 2120} |
| `memTotalKb` | {'int': 2120} |
| `otherPssKb` | {'int': 2120} |
| `processes` | {'int': 2120} |
| `pssFallbackProcesses` | {'int': 2120} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
