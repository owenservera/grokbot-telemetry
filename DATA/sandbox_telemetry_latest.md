# sandbox_telemetry_parse — 2026-10-15 22:25:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1084266 lines=2403
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2398 |
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
| `chromeBrowserPssKb` | {'int': 2398} |
| `chromeGpuPssKb` | {'int': 2398} |
| `chromeOtherPssKb` | {'int': 2398} |
| `chromeProcesses` | {'int': 2398} |
| `chromeProfiles` | {'int': 2398} |
| `chromeRendererMaxPssKb` | {'int': 2398} |
| `chromeRendererPssKb` | {'int': 2398} |
| `chromeRenderers` | {'int': 2398} |
| `chromeTabs` | {'int': 2398} |
| `chromeTabsProbedProfiles` | {'int': 2398} |
| `chromeUtilityPssKb` | {'int': 2398} |
| `desktopPssKb` | {'int': 2398} |
| `hostPssKb` | {'int': 2398} |
| `kind` | {'str': 2398} |
| `memAvailableKb` | {'int': 2398} |
| `memTotalKb` | {'int': 2398} |
| `otherPssKb` | {'int': 2398} |
| `processes` | {'int': 2398} |
| `pssFallbackProcesses` | {'int': 2398} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
