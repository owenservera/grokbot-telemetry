# sandbox_telemetry_parse — 2026-10-15 02:48:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=625486 lines=1388
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1383 |
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
| `chromeBrowserPssKb` | {'int': 1383} |
| `chromeGpuPssKb` | {'int': 1383} |
| `chromeOtherPssKb` | {'int': 1383} |
| `chromeProcesses` | {'int': 1383} |
| `chromeProfiles` | {'int': 1383} |
| `chromeRendererMaxPssKb` | {'int': 1383} |
| `chromeRendererPssKb` | {'int': 1383} |
| `chromeRenderers` | {'int': 1383} |
| `chromeTabs` | {'int': 1383} |
| `chromeTabsProbedProfiles` | {'int': 1383} |
| `chromeUtilityPssKb` | {'int': 1383} |
| `desktopPssKb` | {'int': 1383} |
| `hostPssKb` | {'int': 1383} |
| `kind` | {'str': 1383} |
| `memAvailableKb` | {'int': 1383} |
| `memTotalKb` | {'int': 1383} |
| `otherPssKb` | {'int': 1383} |
| `processes` | {'int': 1383} |
| `pssFallbackProcesses` | {'int': 1383} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
