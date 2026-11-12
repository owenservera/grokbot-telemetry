# sandbox_telemetry_parse — 2026-11-12 09:26:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2063029 lines=4567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4558 |
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
| `chromeBrowserPssKb` | {'int': 4558} |
| `chromeGpuPssKb` | {'int': 4558} |
| `chromeOtherPssKb` | {'int': 4558} |
| `chromeProcesses` | {'int': 4558} |
| `chromeProfiles` | {'int': 4558} |
| `chromeRendererMaxPssKb` | {'int': 4558} |
| `chromeRendererPssKb` | {'int': 4558} |
| `chromeRenderers` | {'int': 4558} |
| `chromeTabs` | {'int': 4558} |
| `chromeTabsProbedProfiles` | {'int': 4558} |
| `chromeUtilityPssKb` | {'int': 4558} |
| `desktopPssKb` | {'int': 4558} |
| `hostPssKb` | {'int': 4558} |
| `kind` | {'str': 4558} |
| `memAvailableKb` | {'int': 4558} |
| `memTotalKb` | {'int': 4558} |
| `otherPssKb` | {'int': 4558} |
| `processes` | {'int': 4558} |
| `pssFallbackProcesses` | {'int': 4558} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
