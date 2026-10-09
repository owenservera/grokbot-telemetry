# sandbox_telemetry_parse — 2026-10-09 16:57:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=615108 lines=1365
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1360 |
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
| `chromeBrowserPssKb` | {'int': 1360} |
| `chromeGpuPssKb` | {'int': 1360} |
| `chromeOtherPssKb` | {'int': 1360} |
| `chromeProcesses` | {'int': 1360} |
| `chromeProfiles` | {'int': 1360} |
| `chromeRendererMaxPssKb` | {'int': 1360} |
| `chromeRendererPssKb` | {'int': 1360} |
| `chromeRenderers` | {'int': 1360} |
| `chromeTabs` | {'int': 1360} |
| `chromeTabsProbedProfiles` | {'int': 1360} |
| `chromeUtilityPssKb` | {'int': 1360} |
| `desktopPssKb` | {'int': 1360} |
| `hostPssKb` | {'int': 1360} |
| `kind` | {'str': 1360} |
| `memAvailableKb` | {'int': 1360} |
| `memTotalKb` | {'int': 1360} |
| `otherPssKb` | {'int': 1360} |
| `processes` | {'int': 1360} |
| `pssFallbackProcesses` | {'int': 1360} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
