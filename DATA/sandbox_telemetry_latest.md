# sandbox_telemetry_parse — 2026-11-07 01:27:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=254033 lines=569
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 560 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 560} |
| `chromeGpuPssKb` | {'int': 560} |
| `chromeOtherPssKb` | {'int': 560} |
| `chromeProcesses` | {'int': 560} |
| `chromeProfiles` | {'int': 560} |
| `chromeRendererMaxPssKb` | {'int': 560} |
| `chromeRendererPssKb` | {'int': 560} |
| `chromeRenderers` | {'int': 560} |
| `chromeTabs` | {'int': 560} |
| `chromeTabsProbedProfiles` | {'int': 560} |
| `chromeUtilityPssKb` | {'int': 560} |
| `desktopPssKb` | {'int': 560} |
| `hostPssKb` | {'int': 560} |
| `kind` | {'str': 560} |
| `memAvailableKb` | {'int': 560} |
| `memTotalKb` | {'int': 560} |
| `otherPssKb` | {'int': 560} |
| `processes` | {'int': 560} |
| `pssFallbackProcesses` | {'int': 560} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
