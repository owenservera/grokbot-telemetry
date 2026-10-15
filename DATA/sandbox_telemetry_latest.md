# sandbox_telemetry_parse — 2026-10-15 17:30:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=972170 lines=2155
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2150 |
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
| `chromeBrowserPssKb` | {'int': 2150} |
| `chromeGpuPssKb` | {'int': 2150} |
| `chromeOtherPssKb` | {'int': 2150} |
| `chromeProcesses` | {'int': 2150} |
| `chromeProfiles` | {'int': 2150} |
| `chromeRendererMaxPssKb` | {'int': 2150} |
| `chromeRendererPssKb` | {'int': 2150} |
| `chromeRenderers` | {'int': 2150} |
| `chromeTabs` | {'int': 2150} |
| `chromeTabsProbedProfiles` | {'int': 2150} |
| `chromeUtilityPssKb` | {'int': 2150} |
| `desktopPssKb` | {'int': 2150} |
| `hostPssKb` | {'int': 2150} |
| `kind` | {'str': 2150} |
| `memAvailableKb` | {'int': 2150} |
| `memTotalKb` | {'int': 2150} |
| `otherPssKb` | {'int': 2150} |
| `processes` | {'int': 2150} |
| `pssFallbackProcesses` | {'int': 2150} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
