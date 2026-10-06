# sandbox_telemetry_parse — 2026-10-06 18:58:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=544658 lines=1199
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1194 |
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
| `chromeBrowserPssKb` | {'int': 1194} |
| `chromeGpuPssKb` | {'int': 1194} |
| `chromeOtherPssKb` | {'int': 1194} |
| `chromeProcesses` | {'int': 1194} |
| `chromeProfiles` | {'int': 1194} |
| `chromeRendererMaxPssKb` | {'int': 1194} |
| `chromeRendererPssKb` | {'int': 1194} |
| `chromeRenderers` | {'int': 1194} |
| `chromeTabs` | {'int': 1194} |
| `chromeTabsProbedProfiles` | {'int': 1194} |
| `chromeUtilityPssKb` | {'int': 1194} |
| `desktopPssKb` | {'int': 1194} |
| `hostPssKb` | {'int': 1194} |
| `kind` | {'str': 1194} |
| `memAvailableKb` | {'int': 1194} |
| `memTotalKb` | {'int': 1194} |
| `otherPssKb` | {'int': 1194} |
| `processes` | {'int': 1194} |
| `pssFallbackProcesses` | {'int': 1194} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
