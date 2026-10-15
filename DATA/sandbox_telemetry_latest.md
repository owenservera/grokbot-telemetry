# sandbox_telemetry_parse — 2026-10-15 22:54:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1095114 lines=2427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2422 |
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
| `chromeBrowserPssKb` | {'int': 2422} |
| `chromeGpuPssKb` | {'int': 2422} |
| `chromeOtherPssKb` | {'int': 2422} |
| `chromeProcesses` | {'int': 2422} |
| `chromeProfiles` | {'int': 2422} |
| `chromeRendererMaxPssKb` | {'int': 2422} |
| `chromeRendererPssKb` | {'int': 2422} |
| `chromeRenderers` | {'int': 2422} |
| `chromeTabs` | {'int': 2422} |
| `chromeTabsProbedProfiles` | {'int': 2422} |
| `chromeUtilityPssKb` | {'int': 2422} |
| `desktopPssKb` | {'int': 2422} |
| `hostPssKb` | {'int': 2422} |
| `kind` | {'str': 2422} |
| `memAvailableKb` | {'int': 2422} |
| `memTotalKb` | {'int': 2422} |
| `otherPssKb` | {'int': 2422} |
| `processes` | {'int': 2422} |
| `pssFallbackProcesses` | {'int': 2422} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
