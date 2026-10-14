# sandbox_telemetry_parse — 2026-10-15 01:32:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=594298 lines=1319
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1314 |
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
| `chromeBrowserPssKb` | {'int': 1314} |
| `chromeGpuPssKb` | {'int': 1314} |
| `chromeOtherPssKb` | {'int': 1314} |
| `chromeProcesses` | {'int': 1314} |
| `chromeProfiles` | {'int': 1314} |
| `chromeRendererMaxPssKb` | {'int': 1314} |
| `chromeRendererPssKb` | {'int': 1314} |
| `chromeRenderers` | {'int': 1314} |
| `chromeTabs` | {'int': 1314} |
| `chromeTabsProbedProfiles` | {'int': 1314} |
| `chromeUtilityPssKb` | {'int': 1314} |
| `desktopPssKb` | {'int': 1314} |
| `hostPssKb` | {'int': 1314} |
| `kind` | {'str': 1314} |
| `memAvailableKb` | {'int': 1314} |
| `memTotalKb` | {'int': 1314} |
| `otherPssKb` | {'int': 1314} |
| `processes` | {'int': 1314} |
| `pssFallbackProcesses` | {'int': 1314} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
