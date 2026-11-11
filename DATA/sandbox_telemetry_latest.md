# sandbox_telemetry_parse — 2026-11-11 20:49:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1810052 lines=4008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3999 |
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
| `chromeBrowserPssKb` | {'int': 3999} |
| `chromeGpuPssKb` | {'int': 3999} |
| `chromeOtherPssKb` | {'int': 3999} |
| `chromeProcesses` | {'int': 3999} |
| `chromeProfiles` | {'int': 3999} |
| `chromeRendererMaxPssKb` | {'int': 3999} |
| `chromeRendererPssKb` | {'int': 3999} |
| `chromeRenderers` | {'int': 3999} |
| `chromeTabs` | {'int': 3999} |
| `chromeTabsProbedProfiles` | {'int': 3999} |
| `chromeUtilityPssKb` | {'int': 3999} |
| `desktopPssKb` | {'int': 3999} |
| `hostPssKb` | {'int': 3999} |
| `kind` | {'str': 3999} |
| `memAvailableKb` | {'int': 3999} |
| `memTotalKb` | {'int': 3999} |
| `otherPssKb` | {'int': 3999} |
| `processes` | {'int': 3999} |
| `pssFallbackProcesses` | {'int': 3999} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
