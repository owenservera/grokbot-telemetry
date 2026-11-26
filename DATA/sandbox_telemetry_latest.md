# sandbox_telemetry_parse — 2026-11-26 01:02:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3004797 lines=6656
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6641 |
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
| `chromeBrowserPssKb` | {'int': 6641} |
| `chromeGpuPssKb` | {'int': 6641} |
| `chromeOtherPssKb` | {'int': 6641} |
| `chromeProcesses` | {'int': 6641} |
| `chromeProfiles` | {'int': 6641} |
| `chromeRendererMaxPssKb` | {'int': 6641} |
| `chromeRendererPssKb` | {'int': 6641} |
| `chromeRenderers` | {'int': 6641} |
| `chromeTabs` | {'int': 6641} |
| `chromeTabsProbedProfiles` | {'int': 6641} |
| `chromeUtilityPssKb` | {'int': 6641} |
| `desktopPssKb` | {'int': 6641} |
| `hostPssKb` | {'int': 6641} |
| `kind` | {'str': 6641} |
| `memAvailableKb` | {'int': 6641} |
| `memTotalKb` | {'int': 6641} |
| `otherPssKb` | {'int': 6641} |
| `processes` | {'int': 6641} |
| `pssFallbackProcesses` | {'int': 6641} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
