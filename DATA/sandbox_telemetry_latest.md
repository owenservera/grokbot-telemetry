# sandbox_telemetry_parse — 2026-10-26 19:29:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=98682 lines=222
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 217 |
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
| `chromeBrowserPssKb` | {'int': 217} |
| `chromeGpuPssKb` | {'int': 217} |
| `chromeOtherPssKb` | {'int': 217} |
| `chromeProcesses` | {'int': 217} |
| `chromeProfiles` | {'int': 217} |
| `chromeRendererMaxPssKb` | {'int': 217} |
| `chromeRendererPssKb` | {'int': 217} |
| `chromeRenderers` | {'int': 217} |
| `chromeTabs` | {'int': 217} |
| `chromeTabsProbedProfiles` | {'int': 217} |
| `chromeUtilityPssKb` | {'int': 217} |
| `desktopPssKb` | {'int': 217} |
| `hostPssKb` | {'int': 217} |
| `kind` | {'str': 217} |
| `memAvailableKb` | {'int': 217} |
| `memTotalKb` | {'int': 217} |
| `otherPssKb` | {'int': 217} |
| `processes` | {'int': 217} |
| `pssFallbackProcesses` | {'int': 217} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
