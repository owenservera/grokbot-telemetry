# sandbox_telemetry_parse — 2026-10-06 18:21:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=528242 lines=1163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1158 |
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
| `chromeBrowserPssKb` | {'int': 1158} |
| `chromeGpuPssKb` | {'int': 1158} |
| `chromeOtherPssKb` | {'int': 1158} |
| `chromeProcesses` | {'int': 1158} |
| `chromeProfiles` | {'int': 1158} |
| `chromeRendererMaxPssKb` | {'int': 1158} |
| `chromeRendererPssKb` | {'int': 1158} |
| `chromeRenderers` | {'int': 1158} |
| `chromeTabs` | {'int': 1158} |
| `chromeTabsProbedProfiles` | {'int': 1158} |
| `chromeUtilityPssKb` | {'int': 1158} |
| `desktopPssKb` | {'int': 1158} |
| `hostPssKb` | {'int': 1158} |
| `kind` | {'str': 1158} |
| `memAvailableKb` | {'int': 1158} |
| `memTotalKb` | {'int': 1158} |
| `otherPssKb` | {'int': 1158} |
| `processes` | {'int': 1158} |
| `pssFallbackProcesses` | {'int': 1158} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
