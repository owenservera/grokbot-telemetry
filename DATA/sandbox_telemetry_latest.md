# sandbox_telemetry_parse — 2026-11-19 06:06:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1147968 lines=2546
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2537 |
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
| `chromeBrowserPssKb` | {'int': 2537} |
| `chromeGpuPssKb` | {'int': 2537} |
| `chromeOtherPssKb` | {'int': 2537} |
| `chromeProcesses` | {'int': 2537} |
| `chromeProfiles` | {'int': 2537} |
| `chromeRendererMaxPssKb` | {'int': 2537} |
| `chromeRendererPssKb` | {'int': 2537} |
| `chromeRenderers` | {'int': 2537} |
| `chromeTabs` | {'int': 2537} |
| `chromeTabsProbedProfiles` | {'int': 2537} |
| `chromeUtilityPssKb` | {'int': 2537} |
| `desktopPssKb` | {'int': 2537} |
| `hostPssKb` | {'int': 2537} |
| `kind` | {'str': 2537} |
| `memAvailableKb` | {'int': 2537} |
| `memTotalKb` | {'int': 2537} |
| `otherPssKb` | {'int': 2537} |
| `processes` | {'int': 2537} |
| `pssFallbackProcesses` | {'int': 2537} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
