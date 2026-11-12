# sandbox_telemetry_parse — 2026-11-12 14:22:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2170297 lines=4804
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4795 |
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
| `chromeBrowserPssKb` | {'int': 4795} |
| `chromeGpuPssKb` | {'int': 4795} |
| `chromeOtherPssKb` | {'int': 4795} |
| `chromeProcesses` | {'int': 4795} |
| `chromeProfiles` | {'int': 4795} |
| `chromeRendererMaxPssKb` | {'int': 4795} |
| `chromeRendererPssKb` | {'int': 4795} |
| `chromeRenderers` | {'int': 4795} |
| `chromeTabs` | {'int': 4795} |
| `chromeTabsProbedProfiles` | {'int': 4795} |
| `chromeUtilityPssKb` | {'int': 4795} |
| `desktopPssKb` | {'int': 4795} |
| `hostPssKb` | {'int': 4795} |
| `kind` | {'str': 4795} |
| `memAvailableKb` | {'int': 4795} |
| `memTotalKb` | {'int': 4795} |
| `otherPssKb` | {'int': 4795} |
| `processes` | {'int': 4795} |
| `pssFallbackProcesses` | {'int': 4795} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
