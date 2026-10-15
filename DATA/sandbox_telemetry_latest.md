# sandbox_telemetry_parse — 2026-10-15 20:38:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1046298 lines=2319
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2314 |
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
| `chromeBrowserPssKb` | {'int': 2314} |
| `chromeGpuPssKb` | {'int': 2314} |
| `chromeOtherPssKb` | {'int': 2314} |
| `chromeProcesses` | {'int': 2314} |
| `chromeProfiles` | {'int': 2314} |
| `chromeRendererMaxPssKb` | {'int': 2314} |
| `chromeRendererPssKb` | {'int': 2314} |
| `chromeRenderers` | {'int': 2314} |
| `chromeTabs` | {'int': 2314} |
| `chromeTabsProbedProfiles` | {'int': 2314} |
| `chromeUtilityPssKb` | {'int': 2314} |
| `desktopPssKb` | {'int': 2314} |
| `hostPssKb` | {'int': 2314} |
| `kind` | {'str': 2314} |
| `memAvailableKb` | {'int': 2314} |
| `memTotalKb` | {'int': 2314} |
| `otherPssKb` | {'int': 2314} |
| `processes` | {'int': 2314} |
| `pssFallbackProcesses` | {'int': 2314} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
