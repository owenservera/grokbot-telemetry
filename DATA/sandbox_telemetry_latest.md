# sandbox_telemetry_parse — 2026-11-20 14:15:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1748306 lines=3875
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3864 |
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
| `chromeBrowserPssKb` | {'int': 3864} |
| `chromeGpuPssKb` | {'int': 3864} |
| `chromeOtherPssKb` | {'int': 3864} |
| `chromeProcesses` | {'int': 3864} |
| `chromeProfiles` | {'int': 3864} |
| `chromeRendererMaxPssKb` | {'int': 3864} |
| `chromeRendererPssKb` | {'int': 3864} |
| `chromeRenderers` | {'int': 3864} |
| `chromeTabs` | {'int': 3864} |
| `chromeTabsProbedProfiles` | {'int': 3864} |
| `chromeUtilityPssKb` | {'int': 3864} |
| `desktopPssKb` | {'int': 3864} |
| `hostPssKb` | {'int': 3864} |
| `kind` | {'str': 3864} |
| `memAvailableKb` | {'int': 3864} |
| `memTotalKb` | {'int': 3864} |
| `otherPssKb` | {'int': 3864} |
| `processes` | {'int': 3864} |
| `pssFallbackProcesses` | {'int': 3864} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
