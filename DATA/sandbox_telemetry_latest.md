# sandbox_telemetry_parse — 2026-11-10 07:24:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1036674 lines=2299
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2290 |
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
| `chromeBrowserPssKb` | {'int': 2290} |
| `chromeGpuPssKb` | {'int': 2290} |
| `chromeOtherPssKb` | {'int': 2290} |
| `chromeProcesses` | {'int': 2290} |
| `chromeProfiles` | {'int': 2290} |
| `chromeRendererMaxPssKb` | {'int': 2290} |
| `chromeRendererPssKb` | {'int': 2290} |
| `chromeRenderers` | {'int': 2290} |
| `chromeTabs` | {'int': 2290} |
| `chromeTabsProbedProfiles` | {'int': 2290} |
| `chromeUtilityPssKb` | {'int': 2290} |
| `desktopPssKb` | {'int': 2290} |
| `hostPssKb` | {'int': 2290} |
| `kind` | {'str': 2290} |
| `memAvailableKb` | {'int': 2290} |
| `memTotalKb` | {'int': 2290} |
| `otherPssKb` | {'int': 2290} |
| `processes` | {'int': 2290} |
| `pssFallbackProcesses` | {'int': 2290} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
