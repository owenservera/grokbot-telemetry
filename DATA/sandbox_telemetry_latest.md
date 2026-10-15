# sandbox_telemetry_parse — 2026-10-15 19:47:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1023246 lines=2268
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2263 |
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
| `chromeBrowserPssKb` | {'int': 2263} |
| `chromeGpuPssKb` | {'int': 2263} |
| `chromeOtherPssKb` | {'int': 2263} |
| `chromeProcesses` | {'int': 2263} |
| `chromeProfiles` | {'int': 2263} |
| `chromeRendererMaxPssKb` | {'int': 2263} |
| `chromeRendererPssKb` | {'int': 2263} |
| `chromeRenderers` | {'int': 2263} |
| `chromeTabs` | {'int': 2263} |
| `chromeTabsProbedProfiles` | {'int': 2263} |
| `chromeUtilityPssKb` | {'int': 2263} |
| `desktopPssKb` | {'int': 2263} |
| `hostPssKb` | {'int': 2263} |
| `kind` | {'str': 2263} |
| `memAvailableKb` | {'int': 2263} |
| `memTotalKb` | {'int': 2263} |
| `otherPssKb` | {'int': 2263} |
| `processes` | {'int': 2263} |
| `pssFallbackProcesses` | {'int': 2263} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
