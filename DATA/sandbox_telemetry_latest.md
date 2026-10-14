# sandbox_telemetry_parse — 2026-10-15 01:39:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=597462 lines=1326
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1321 |
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
| `chromeBrowserPssKb` | {'int': 1321} |
| `chromeGpuPssKb` | {'int': 1321} |
| `chromeOtherPssKb` | {'int': 1321} |
| `chromeProcesses` | {'int': 1321} |
| `chromeProfiles` | {'int': 1321} |
| `chromeRendererMaxPssKb` | {'int': 1321} |
| `chromeRendererPssKb` | {'int': 1321} |
| `chromeRenderers` | {'int': 1321} |
| `chromeTabs` | {'int': 1321} |
| `chromeTabsProbedProfiles` | {'int': 1321} |
| `chromeUtilityPssKb` | {'int': 1321} |
| `desktopPssKb` | {'int': 1321} |
| `hostPssKb` | {'int': 1321} |
| `kind` | {'str': 1321} |
| `memAvailableKb` | {'int': 1321} |
| `memTotalKb` | {'int': 1321} |
| `otherPssKb` | {'int': 1321} |
| `processes` | {'int': 1321} |
| `pssFallbackProcesses` | {'int': 1321} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
