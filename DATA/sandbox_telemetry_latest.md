# sandbox_telemetry_parse — 2026-11-23 19:35:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1962217 lines=4351
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4336 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4336} |
| `chromeGpuPssKb` | {'int': 4336} |
| `chromeOtherPssKb` | {'int': 4336} |
| `chromeProcesses` | {'int': 4336} |
| `chromeProfiles` | {'int': 4336} |
| `chromeRendererMaxPssKb` | {'int': 4336} |
| `chromeRendererPssKb` | {'int': 4336} |
| `chromeRenderers` | {'int': 4336} |
| `chromeTabs` | {'int': 4336} |
| `chromeTabsProbedProfiles` | {'int': 4336} |
| `chromeUtilityPssKb` | {'int': 4336} |
| `desktopPssKb` | {'int': 4336} |
| `hostPssKb` | {'int': 4336} |
| `kind` | {'str': 4336} |
| `memAvailableKb` | {'int': 4336} |
| `memTotalKb` | {'int': 4336} |
| `otherPssKb` | {'int': 4336} |
| `processes` | {'int': 4336} |
| `pssFallbackProcesses` | {'int': 4336} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
