# sandbox_telemetry_parse — 2026-11-11 16:13:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1709571 lines=3786
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3777 |
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
| `chromeBrowserPssKb` | {'int': 3777} |
| `chromeGpuPssKb` | {'int': 3777} |
| `chromeOtherPssKb` | {'int': 3777} |
| `chromeProcesses` | {'int': 3777} |
| `chromeProfiles` | {'int': 3777} |
| `chromeRendererMaxPssKb` | {'int': 3777} |
| `chromeRendererPssKb` | {'int': 3777} |
| `chromeRenderers` | {'int': 3777} |
| `chromeTabs` | {'int': 3777} |
| `chromeTabsProbedProfiles` | {'int': 3777} |
| `chromeUtilityPssKb` | {'int': 3777} |
| `desktopPssKb` | {'int': 3777} |
| `hostPssKb` | {'int': 3777} |
| `kind` | {'str': 3777} |
| `memAvailableKb` | {'int': 3777} |
| `memTotalKb` | {'int': 3777} |
| `otherPssKb` | {'int': 3777} |
| `processes` | {'int': 3777} |
| `pssFallbackProcesses` | {'int': 3777} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
