# sandbox_telemetry_parse — 2026-10-06 23:12:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=660026 lines=1452
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1447 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1447} |
| `chromeGpuPssKb` | {'int': 1447} |
| `chromeOtherPssKb` | {'int': 1447} |
| `chromeProcesses` | {'int': 1447} |
| `chromeProfiles` | {'int': 1447} |
| `chromeRendererMaxPssKb` | {'int': 1447} |
| `chromeRendererPssKb` | {'int': 1447} |
| `chromeRenderers` | {'int': 1447} |
| `chromeTabs` | {'int': 1447} |
| `chromeTabsProbedProfiles` | {'int': 1447} |
| `chromeUtilityPssKb` | {'int': 1447} |
| `desktopPssKb` | {'int': 1447} |
| `hostPssKb` | {'int': 1447} |
| `kind` | {'str': 1447} |
| `memAvailableKb` | {'int': 1447} |
| `memTotalKb` | {'int': 1447} |
| `otherPssKb` | {'int': 1447} |
| `processes` | {'int': 1447} |
| `pssFallbackProcesses` | {'int': 1447} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
