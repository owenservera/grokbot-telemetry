# sandbox_telemetry_parse — 2026-10-06 11:55:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=354506 lines=782
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 777 |
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
| `chromeBrowserPssKb` | {'int': 777} |
| `chromeGpuPssKb` | {'int': 777} |
| `chromeOtherPssKb` | {'int': 777} |
| `chromeProcesses` | {'int': 777} |
| `chromeProfiles` | {'int': 777} |
| `chromeRendererMaxPssKb` | {'int': 777} |
| `chromeRendererPssKb` | {'int': 777} |
| `chromeRenderers` | {'int': 777} |
| `chromeTabs` | {'int': 777} |
| `chromeTabsProbedProfiles` | {'int': 777} |
| `chromeUtilityPssKb` | {'int': 777} |
| `desktopPssKb` | {'int': 777} |
| `hostPssKb` | {'int': 777} |
| `kind` | {'str': 777} |
| `memAvailableKb` | {'int': 777} |
| `memTotalKb` | {'int': 777} |
| `otherPssKb` | {'int': 777} |
| `processes` | {'int': 777} |
| `pssFallbackProcesses` | {'int': 777} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
