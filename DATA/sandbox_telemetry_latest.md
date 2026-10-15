# sandbox_telemetry_parse — 2026-10-15 17:26:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=970362 lines=2151
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2146 |
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
| `chromeBrowserPssKb` | {'int': 2146} |
| `chromeGpuPssKb` | {'int': 2146} |
| `chromeOtherPssKb` | {'int': 2146} |
| `chromeProcesses` | {'int': 2146} |
| `chromeProfiles` | {'int': 2146} |
| `chromeRendererMaxPssKb` | {'int': 2146} |
| `chromeRendererPssKb` | {'int': 2146} |
| `chromeRenderers` | {'int': 2146} |
| `chromeTabs` | {'int': 2146} |
| `chromeTabsProbedProfiles` | {'int': 2146} |
| `chromeUtilityPssKb` | {'int': 2146} |
| `desktopPssKb` | {'int': 2146} |
| `hostPssKb` | {'int': 2146} |
| `kind` | {'str': 2146} |
| `memAvailableKb` | {'int': 2146} |
| `memTotalKb` | {'int': 2146} |
| `otherPssKb` | {'int': 2146} |
| `processes` | {'int': 2146} |
| `pssFallbackProcesses` | {'int': 2146} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
