# sandbox_telemetry_parse — 2026-11-28 20:57:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1057603 lines=2344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2336 |
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
| `chromeBrowserPssKb` | {'int': 2336} |
| `chromeGpuPssKb` | {'int': 2336} |
| `chromeOtherPssKb` | {'int': 2336} |
| `chromeProcesses` | {'int': 2336} |
| `chromeProfiles` | {'int': 2336} |
| `chromeRendererMaxPssKb` | {'int': 2336} |
| `chromeRendererPssKb` | {'int': 2336} |
| `chromeRenderers` | {'int': 2336} |
| `chromeTabs` | {'int': 2336} |
| `chromeTabsProbedProfiles` | {'int': 2336} |
| `chromeUtilityPssKb` | {'int': 2336} |
| `desktopPssKb` | {'int': 2336} |
| `hostPssKb` | {'int': 2336} |
| `kind` | {'str': 2336} |
| `memAvailableKb` | {'int': 2336} |
| `memTotalKb` | {'int': 2336} |
| `otherPssKb` | {'int': 2336} |
| `processes` | {'int': 2336} |
| `pssFallbackProcesses` | {'int': 2336} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
