# sandbox_telemetry_parse — 2026-10-06 11:44:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=349490 lines=771
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 766 |
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
| `chromeBrowserPssKb` | {'int': 766} |
| `chromeGpuPssKb` | {'int': 766} |
| `chromeOtherPssKb` | {'int': 766} |
| `chromeProcesses` | {'int': 766} |
| `chromeProfiles` | {'int': 766} |
| `chromeRendererMaxPssKb` | {'int': 766} |
| `chromeRendererPssKb` | {'int': 766} |
| `chromeRenderers` | {'int': 766} |
| `chromeTabs` | {'int': 766} |
| `chromeTabsProbedProfiles` | {'int': 766} |
| `chromeUtilityPssKb` | {'int': 766} |
| `desktopPssKb` | {'int': 766} |
| `hostPssKb` | {'int': 766} |
| `kind` | {'str': 766} |
| `memAvailableKb` | {'int': 766} |
| `memTotalKb` | {'int': 766} |
| `otherPssKb` | {'int': 766} |
| `processes` | {'int': 766} |
| `pssFallbackProcesses` | {'int': 766} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
