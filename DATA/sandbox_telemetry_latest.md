# sandbox_telemetry_parse — 2026-10-15 02:10:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=609214 lines=1352
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1347 |
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
| `chromeBrowserPssKb` | {'int': 1347} |
| `chromeGpuPssKb` | {'int': 1347} |
| `chromeOtherPssKb` | {'int': 1347} |
| `chromeProcesses` | {'int': 1347} |
| `chromeProfiles` | {'int': 1347} |
| `chromeRendererMaxPssKb` | {'int': 1347} |
| `chromeRendererPssKb` | {'int': 1347} |
| `chromeRenderers` | {'int': 1347} |
| `chromeTabs` | {'int': 1347} |
| `chromeTabsProbedProfiles` | {'int': 1347} |
| `chromeUtilityPssKb` | {'int': 1347} |
| `desktopPssKb` | {'int': 1347} |
| `hostPssKb` | {'int': 1347} |
| `kind` | {'str': 1347} |
| `memAvailableKb` | {'int': 1347} |
| `memTotalKb` | {'int': 1347} |
| `otherPssKb` | {'int': 1347} |
| `processes` | {'int': 1347} |
| `pssFallbackProcesses` | {'int': 1347} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
