# sandbox_telemetry_parse — 2026-10-15 07:51:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=746622 lines=1656
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1651 |
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
| `chromeBrowserPssKb` | {'int': 1651} |
| `chromeGpuPssKb` | {'int': 1651} |
| `chromeOtherPssKb` | {'int': 1651} |
| `chromeProcesses` | {'int': 1651} |
| `chromeProfiles` | {'int': 1651} |
| `chromeRendererMaxPssKb` | {'int': 1651} |
| `chromeRendererPssKb` | {'int': 1651} |
| `chromeRenderers` | {'int': 1651} |
| `chromeTabs` | {'int': 1651} |
| `chromeTabsProbedProfiles` | {'int': 1651} |
| `chromeUtilityPssKb` | {'int': 1651} |
| `desktopPssKb` | {'int': 1651} |
| `hostPssKb` | {'int': 1651} |
| `kind` | {'str': 1651} |
| `memAvailableKb` | {'int': 1651} |
| `memTotalKb` | {'int': 1651} |
| `otherPssKb` | {'int': 1651} |
| `processes` | {'int': 1651} |
| `pssFallbackProcesses` | {'int': 1651} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
