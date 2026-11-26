# sandbox_telemetry_parse — 2026-11-26 06:20:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3115631 lines=6901
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6886 |
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
| `chromeBrowserPssKb` | {'int': 6886} |
| `chromeGpuPssKb` | {'int': 6886} |
| `chromeOtherPssKb` | {'int': 6886} |
| `chromeProcesses` | {'int': 6886} |
| `chromeProfiles` | {'int': 6886} |
| `chromeRendererMaxPssKb` | {'int': 6886} |
| `chromeRendererPssKb` | {'int': 6886} |
| `chromeRenderers` | {'int': 6886} |
| `chromeTabs` | {'int': 6886} |
| `chromeTabsProbedProfiles` | {'int': 6886} |
| `chromeUtilityPssKb` | {'int': 6886} |
| `desktopPssKb` | {'int': 6886} |
| `hostPssKb` | {'int': 6886} |
| `kind` | {'str': 6886} |
| `memAvailableKb` | {'int': 6886} |
| `memTotalKb` | {'int': 6886} |
| `otherPssKb` | {'int': 6886} |
| `processes` | {'int': 6886} |
| `pssFallbackProcesses` | {'int': 6886} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
