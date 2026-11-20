# sandbox_telemetry_parse — 2026-11-20 10:08:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1668708 lines=3699
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3688 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3688} |
| `chromeGpuPssKb` | {'int': 3688} |
| `chromeOtherPssKb` | {'int': 3688} |
| `chromeProcesses` | {'int': 3688} |
| `chromeProfiles` | {'int': 3688} |
| `chromeRendererMaxPssKb` | {'int': 3688} |
| `chromeRendererPssKb` | {'int': 3688} |
| `chromeRenderers` | {'int': 3688} |
| `chromeTabs` | {'int': 3688} |
| `chromeTabsProbedProfiles` | {'int': 3688} |
| `chromeUtilityPssKb` | {'int': 3688} |
| `desktopPssKb` | {'int': 3688} |
| `hostPssKb` | {'int': 3688} |
| `kind` | {'str': 3688} |
| `memAvailableKb` | {'int': 3688} |
| `memTotalKb` | {'int': 3688} |
| `otherPssKb` | {'int': 3688} |
| `processes` | {'int': 3688} |
| `pssFallbackProcesses` | {'int': 3688} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
