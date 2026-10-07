# sandbox_telemetry_parse — 2026-10-07 06:28:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=855373 lines=1880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1875 |
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
| `chromeBrowserPssKb` | {'int': 1875} |
| `chromeGpuPssKb` | {'int': 1875} |
| `chromeOtherPssKb` | {'int': 1875} |
| `chromeProcesses` | {'int': 1875} |
| `chromeProfiles` | {'int': 1875} |
| `chromeRendererMaxPssKb` | {'int': 1875} |
| `chromeRendererPssKb` | {'int': 1875} |
| `chromeRenderers` | {'int': 1875} |
| `chromeTabs` | {'int': 1875} |
| `chromeTabsProbedProfiles` | {'int': 1875} |
| `chromeUtilityPssKb` | {'int': 1875} |
| `desktopPssKb` | {'int': 1875} |
| `hostPssKb` | {'int': 1875} |
| `kind` | {'str': 1875} |
| `memAvailableKb` | {'int': 1875} |
| `memTotalKb` | {'int': 1875} |
| `otherPssKb` | {'int': 1875} |
| `processes` | {'int': 1875} |
| `pssFallbackProcesses` | {'int': 1875} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
