# sandbox_telemetry_parse — 2026-10-06 18:11:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=523682 lines=1153
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1148 |
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
| `chromeBrowserPssKb` | {'int': 1148} |
| `chromeGpuPssKb` | {'int': 1148} |
| `chromeOtherPssKb` | {'int': 1148} |
| `chromeProcesses` | {'int': 1148} |
| `chromeProfiles` | {'int': 1148} |
| `chromeRendererMaxPssKb` | {'int': 1148} |
| `chromeRendererPssKb` | {'int': 1148} |
| `chromeRenderers` | {'int': 1148} |
| `chromeTabs` | {'int': 1148} |
| `chromeTabsProbedProfiles` | {'int': 1148} |
| `chromeUtilityPssKb` | {'int': 1148} |
| `desktopPssKb` | {'int': 1148} |
| `hostPssKb` | {'int': 1148} |
| `kind` | {'str': 1148} |
| `memAvailableKb` | {'int': 1148} |
| `memTotalKb` | {'int': 1148} |
| `otherPssKb` | {'int': 1148} |
| `processes` | {'int': 1148} |
| `pssFallbackProcesses` | {'int': 1148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
