# sandbox_telemetry_parse — 2026-10-15 11:12:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=829338 lines=1839
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1834 |
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
| `chromeBrowserPssKb` | {'int': 1834} |
| `chromeGpuPssKb` | {'int': 1834} |
| `chromeOtherPssKb` | {'int': 1834} |
| `chromeProcesses` | {'int': 1834} |
| `chromeProfiles` | {'int': 1834} |
| `chromeRendererMaxPssKb` | {'int': 1834} |
| `chromeRendererPssKb` | {'int': 1834} |
| `chromeRenderers` | {'int': 1834} |
| `chromeTabs` | {'int': 1834} |
| `chromeTabsProbedProfiles` | {'int': 1834} |
| `chromeUtilityPssKb` | {'int': 1834} |
| `desktopPssKb` | {'int': 1834} |
| `hostPssKb` | {'int': 1834} |
| `kind` | {'str': 1834} |
| `memAvailableKb` | {'int': 1834} |
| `memTotalKb` | {'int': 1834} |
| `otherPssKb` | {'int': 1834} |
| `processes` | {'int': 1834} |
| `pssFallbackProcesses` | {'int': 1834} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
