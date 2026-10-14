# sandbox_telemetry_parse — 2026-10-14 21:41:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=502994 lines=1117
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1112 |
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
| `chromeBrowserPssKb` | {'int': 1112} |
| `chromeGpuPssKb` | {'int': 1112} |
| `chromeOtherPssKb` | {'int': 1112} |
| `chromeProcesses` | {'int': 1112} |
| `chromeProfiles` | {'int': 1112} |
| `chromeRendererMaxPssKb` | {'int': 1112} |
| `chromeRendererPssKb` | {'int': 1112} |
| `chromeRenderers` | {'int': 1112} |
| `chromeTabs` | {'int': 1112} |
| `chromeTabsProbedProfiles` | {'int': 1112} |
| `chromeUtilityPssKb` | {'int': 1112} |
| `desktopPssKb` | {'int': 1112} |
| `hostPssKb` | {'int': 1112} |
| `kind` | {'str': 1112} |
| `memAvailableKb` | {'int': 1112} |
| `memTotalKb` | {'int': 1112} |
| `otherPssKb` | {'int': 1112} |
| `processes` | {'int': 1112} |
| `pssFallbackProcesses` | {'int': 1112} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
