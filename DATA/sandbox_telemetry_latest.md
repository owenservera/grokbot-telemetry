# sandbox_telemetry_parse — 2026-10-15 01:28:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=593394 lines=1317
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1312 |
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
| `chromeBrowserPssKb` | {'int': 1312} |
| `chromeGpuPssKb` | {'int': 1312} |
| `chromeOtherPssKb` | {'int': 1312} |
| `chromeProcesses` | {'int': 1312} |
| `chromeProfiles` | {'int': 1312} |
| `chromeRendererMaxPssKb` | {'int': 1312} |
| `chromeRendererPssKb` | {'int': 1312} |
| `chromeRenderers` | {'int': 1312} |
| `chromeTabs` | {'int': 1312} |
| `chromeTabsProbedProfiles` | {'int': 1312} |
| `chromeUtilityPssKb` | {'int': 1312} |
| `desktopPssKb` | {'int': 1312} |
| `hostPssKb` | {'int': 1312} |
| `kind` | {'str': 1312} |
| `memAvailableKb` | {'int': 1312} |
| `memTotalKb` | {'int': 1312} |
| `otherPssKb` | {'int': 1312} |
| `processes` | {'int': 1312} |
| `pssFallbackProcesses` | {'int': 1312} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
