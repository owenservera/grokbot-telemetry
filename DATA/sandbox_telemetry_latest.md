# sandbox_telemetry_parse — 2026-10-14 19:20:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=445590 lines=990
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 985 |
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
| `chromeBrowserPssKb` | {'int': 985} |
| `chromeGpuPssKb` | {'int': 985} |
| `chromeOtherPssKb` | {'int': 985} |
| `chromeProcesses` | {'int': 985} |
| `chromeProfiles` | {'int': 985} |
| `chromeRendererMaxPssKb` | {'int': 985} |
| `chromeRendererPssKb` | {'int': 985} |
| `chromeRenderers` | {'int': 985} |
| `chromeTabs` | {'int': 985} |
| `chromeTabsProbedProfiles` | {'int': 985} |
| `chromeUtilityPssKb` | {'int': 985} |
| `desktopPssKb` | {'int': 985} |
| `hostPssKb` | {'int': 985} |
| `kind` | {'str': 985} |
| `memAvailableKb` | {'int': 985} |
| `memTotalKb` | {'int': 985} |
| `otherPssKb` | {'int': 985} |
| `processes` | {'int': 985} |
| `pssFallbackProcesses` | {'int': 985} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
