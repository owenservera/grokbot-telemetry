# sandbox_telemetry_parse — 2026-10-15 01:48:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=599722 lines=1331
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1326 |
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
| `chromeBrowserPssKb` | {'int': 1326} |
| `chromeGpuPssKb` | {'int': 1326} |
| `chromeOtherPssKb` | {'int': 1326} |
| `chromeProcesses` | {'int': 1326} |
| `chromeProfiles` | {'int': 1326} |
| `chromeRendererMaxPssKb` | {'int': 1326} |
| `chromeRendererPssKb` | {'int': 1326} |
| `chromeRenderers` | {'int': 1326} |
| `chromeTabs` | {'int': 1326} |
| `chromeTabsProbedProfiles` | {'int': 1326} |
| `chromeUtilityPssKb` | {'int': 1326} |
| `desktopPssKb` | {'int': 1326} |
| `hostPssKb` | {'int': 1326} |
| `kind` | {'str': 1326} |
| `memAvailableKb` | {'int': 1326} |
| `memTotalKb` | {'int': 1326} |
| `otherPssKb` | {'int': 1326} |
| `processes` | {'int': 1326} |
| `pssFallbackProcesses` | {'int': 1326} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
