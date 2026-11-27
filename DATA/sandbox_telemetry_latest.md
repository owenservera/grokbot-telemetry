# sandbox_telemetry_parse — 2026-11-27 20:43:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=584256 lines=1298
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1290 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1290} |
| `chromeGpuPssKb` | {'int': 1290} |
| `chromeOtherPssKb` | {'int': 1290} |
| `chromeProcesses` | {'int': 1290} |
| `chromeProfiles` | {'int': 1290} |
| `chromeRendererMaxPssKb` | {'int': 1290} |
| `chromeRendererPssKb` | {'int': 1290} |
| `chromeRenderers` | {'int': 1290} |
| `chromeTabs` | {'int': 1290} |
| `chromeTabsProbedProfiles` | {'int': 1290} |
| `chromeUtilityPssKb` | {'int': 1290} |
| `desktopPssKb` | {'int': 1290} |
| `hostPssKb` | {'int': 1290} |
| `kind` | {'str': 1290} |
| `memAvailableKb` | {'int': 1290} |
| `memTotalKb` | {'int': 1290} |
| `otherPssKb` | {'int': 1290} |
| `processes` | {'int': 1290} |
| `pssFallbackProcesses` | {'int': 1290} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
