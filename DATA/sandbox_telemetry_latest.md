# sandbox_telemetry_parse — 2026-11-25 00:33:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2518666 lines=5581
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5566 |
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
| `chromeBrowserPssKb` | {'int': 5566} |
| `chromeGpuPssKb` | {'int': 5566} |
| `chromeOtherPssKb` | {'int': 5566} |
| `chromeProcesses` | {'int': 5566} |
| `chromeProfiles` | {'int': 5566} |
| `chromeRendererMaxPssKb` | {'int': 5566} |
| `chromeRendererPssKb` | {'int': 5566} |
| `chromeRenderers` | {'int': 5566} |
| `chromeTabs` | {'int': 5566} |
| `chromeTabsProbedProfiles` | {'int': 5566} |
| `chromeUtilityPssKb` | {'int': 5566} |
| `desktopPssKb` | {'int': 5566} |
| `hostPssKb` | {'int': 5566} |
| `kind` | {'str': 5566} |
| `memAvailableKb` | {'int': 5566} |
| `memTotalKb` | {'int': 5566} |
| `otherPssKb` | {'int': 5566} |
| `processes` | {'int': 5566} |
| `pssFallbackProcesses` | {'int': 5566} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
