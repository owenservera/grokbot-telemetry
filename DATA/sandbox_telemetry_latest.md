# sandbox_telemetry_parse — 2026-11-07 01:51:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=260825 lines=584
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 575 |
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
| `chromeBrowserPssKb` | {'int': 575} |
| `chromeGpuPssKb` | {'int': 575} |
| `chromeOtherPssKb` | {'int': 575} |
| `chromeProcesses` | {'int': 575} |
| `chromeProfiles` | {'int': 575} |
| `chromeRendererMaxPssKb` | {'int': 575} |
| `chromeRendererPssKb` | {'int': 575} |
| `chromeRenderers` | {'int': 575} |
| `chromeTabs` | {'int': 575} |
| `chromeTabsProbedProfiles` | {'int': 575} |
| `chromeUtilityPssKb` | {'int': 575} |
| `desktopPssKb` | {'int': 575} |
| `hostPssKb` | {'int': 575} |
| `kind` | {'str': 575} |
| `memAvailableKb` | {'int': 575} |
| `memTotalKb` | {'int': 575} |
| `otherPssKb` | {'int': 575} |
| `processes` | {'int': 575} |
| `pssFallbackProcesses` | {'int': 575} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
