# sandbox_telemetry_parse — 2026-10-15 00:38:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=571246 lines=1268
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1263 |
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
| `chromeBrowserPssKb` | {'int': 1263} |
| `chromeGpuPssKb` | {'int': 1263} |
| `chromeOtherPssKb` | {'int': 1263} |
| `chromeProcesses` | {'int': 1263} |
| `chromeProfiles` | {'int': 1263} |
| `chromeRendererMaxPssKb` | {'int': 1263} |
| `chromeRendererPssKb` | {'int': 1263} |
| `chromeRenderers` | {'int': 1263} |
| `chromeTabs` | {'int': 1263} |
| `chromeTabsProbedProfiles` | {'int': 1263} |
| `chromeUtilityPssKb` | {'int': 1263} |
| `desktopPssKb` | {'int': 1263} |
| `hostPssKb` | {'int': 1263} |
| `kind` | {'str': 1263} |
| `memAvailableKb` | {'int': 1263} |
| `memTotalKb` | {'int': 1263} |
| `otherPssKb` | {'int': 1263} |
| `processes` | {'int': 1263} |
| `pssFallbackProcesses` | {'int': 1263} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
