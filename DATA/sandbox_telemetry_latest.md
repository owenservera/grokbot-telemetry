# sandbox_telemetry_parse — 2026-11-19 07:19:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1168308 lines=2591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2582 |
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
| `chromeBrowserPssKb` | {'int': 2582} |
| `chromeGpuPssKb` | {'int': 2582} |
| `chromeOtherPssKb` | {'int': 2582} |
| `chromeProcesses` | {'int': 2582} |
| `chromeProfiles` | {'int': 2582} |
| `chromeRendererMaxPssKb` | {'int': 2582} |
| `chromeRendererPssKb` | {'int': 2582} |
| `chromeRenderers` | {'int': 2582} |
| `chromeTabs` | {'int': 2582} |
| `chromeTabsProbedProfiles` | {'int': 2582} |
| `chromeUtilityPssKb` | {'int': 2582} |
| `desktopPssKb` | {'int': 2582} |
| `hostPssKb` | {'int': 2582} |
| `kind` | {'str': 2582} |
| `memAvailableKb` | {'int': 2582} |
| `memTotalKb` | {'int': 2582} |
| `otherPssKb` | {'int': 2582} |
| `processes` | {'int': 2582} |
| `pssFallbackProcesses` | {'int': 2582} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
