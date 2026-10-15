# sandbox_telemetry_parse — 2026-10-15 03:18:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=637238 lines=1414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1409 |
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
| `chromeBrowserPssKb` | {'int': 1409} |
| `chromeGpuPssKb` | {'int': 1409} |
| `chromeOtherPssKb` | {'int': 1409} |
| `chromeProcesses` | {'int': 1409} |
| `chromeProfiles` | {'int': 1409} |
| `chromeRendererMaxPssKb` | {'int': 1409} |
| `chromeRendererPssKb` | {'int': 1409} |
| `chromeRenderers` | {'int': 1409} |
| `chromeTabs` | {'int': 1409} |
| `chromeTabsProbedProfiles` | {'int': 1409} |
| `chromeUtilityPssKb` | {'int': 1409} |
| `desktopPssKb` | {'int': 1409} |
| `hostPssKb` | {'int': 1409} |
| `kind` | {'str': 1409} |
| `memAvailableKb` | {'int': 1409} |
| `memTotalKb` | {'int': 1409} |
| `otherPssKb` | {'int': 1409} |
| `processes` | {'int': 1409} |
| `pssFallbackProcesses` | {'int': 1409} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
