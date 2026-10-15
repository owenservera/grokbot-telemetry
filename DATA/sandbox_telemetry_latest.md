# sandbox_telemetry_parse — 2026-10-15 12:15:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=855554 lines=1897
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1892 |
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
| `chromeBrowserPssKb` | {'int': 1892} |
| `chromeGpuPssKb` | {'int': 1892} |
| `chromeOtherPssKb` | {'int': 1892} |
| `chromeProcesses` | {'int': 1892} |
| `chromeProfiles` | {'int': 1892} |
| `chromeRendererMaxPssKb` | {'int': 1892} |
| `chromeRendererPssKb` | {'int': 1892} |
| `chromeRenderers` | {'int': 1892} |
| `chromeTabs` | {'int': 1892} |
| `chromeTabsProbedProfiles` | {'int': 1892} |
| `chromeUtilityPssKb` | {'int': 1892} |
| `desktopPssKb` | {'int': 1892} |
| `hostPssKb` | {'int': 1892} |
| `kind` | {'str': 1892} |
| `memAvailableKb` | {'int': 1892} |
| `memTotalKb` | {'int': 1892} |
| `otherPssKb` | {'int': 1892} |
| `processes` | {'int': 1892} |
| `pssFallbackProcesses` | {'int': 1892} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
