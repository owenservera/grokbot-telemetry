# sandbox_telemetry_parse — 2026-10-26 22:08:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=167085 lines=373
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 368 |
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
| `chromeBrowserPssKb` | {'int': 368} |
| `chromeGpuPssKb` | {'int': 368} |
| `chromeOtherPssKb` | {'int': 368} |
| `chromeProcesses` | {'int': 368} |
| `chromeProfiles` | {'int': 368} |
| `chromeRendererMaxPssKb` | {'int': 368} |
| `chromeRendererPssKb` | {'int': 368} |
| `chromeRenderers` | {'int': 368} |
| `chromeTabs` | {'int': 368} |
| `chromeTabsProbedProfiles` | {'int': 368} |
| `chromeUtilityPssKb` | {'int': 368} |
| `desktopPssKb` | {'int': 368} |
| `hostPssKb` | {'int': 368} |
| `kind` | {'str': 368} |
| `memAvailableKb` | {'int': 368} |
| `memTotalKb` | {'int': 368} |
| `otherPssKb` | {'int': 368} |
| `processes` | {'int': 368} |
| `pssFallbackProcesses` | {'int': 368} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
