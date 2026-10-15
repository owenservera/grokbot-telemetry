# sandbox_telemetry_parse — 2026-10-15 03:24:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=639498 lines=1419
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1414 |
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
| `chromeBrowserPssKb` | {'int': 1414} |
| `chromeGpuPssKb` | {'int': 1414} |
| `chromeOtherPssKb` | {'int': 1414} |
| `chromeProcesses` | {'int': 1414} |
| `chromeProfiles` | {'int': 1414} |
| `chromeRendererMaxPssKb` | {'int': 1414} |
| `chromeRendererPssKb` | {'int': 1414} |
| `chromeRenderers` | {'int': 1414} |
| `chromeTabs` | {'int': 1414} |
| `chromeTabsProbedProfiles` | {'int': 1414} |
| `chromeUtilityPssKb` | {'int': 1414} |
| `desktopPssKb` | {'int': 1414} |
| `hostPssKb` | {'int': 1414} |
| `kind` | {'str': 1414} |
| `memAvailableKb` | {'int': 1414} |
| `memTotalKb` | {'int': 1414} |
| `otherPssKb` | {'int': 1414} |
| `processes` | {'int': 1414} |
| `pssFallbackProcesses` | {'int': 1414} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
