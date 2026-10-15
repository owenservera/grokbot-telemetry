# sandbox_telemetry_parse — 2026-10-15 19:25:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1013754 lines=2247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2242 |
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
| `chromeBrowserPssKb` | {'int': 2242} |
| `chromeGpuPssKb` | {'int': 2242} |
| `chromeOtherPssKb` | {'int': 2242} |
| `chromeProcesses` | {'int': 2242} |
| `chromeProfiles` | {'int': 2242} |
| `chromeRendererMaxPssKb` | {'int': 2242} |
| `chromeRendererPssKb` | {'int': 2242} |
| `chromeRenderers` | {'int': 2242} |
| `chromeTabs` | {'int': 2242} |
| `chromeTabsProbedProfiles` | {'int': 2242} |
| `chromeUtilityPssKb` | {'int': 2242} |
| `desktopPssKb` | {'int': 2242} |
| `hostPssKb` | {'int': 2242} |
| `kind` | {'str': 2242} |
| `memAvailableKb` | {'int': 2242} |
| `memTotalKb` | {'int': 2242} |
| `otherPssKb` | {'int': 2242} |
| `processes` | {'int': 2242} |
| `pssFallbackProcesses` | {'int': 2242} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
