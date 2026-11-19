# sandbox_telemetry_parse — 2026-11-19 17:01:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1362548 lines=3022
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3011 |
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
| `chromeBrowserPssKb` | {'int': 3011} |
| `chromeGpuPssKb` | {'int': 3011} |
| `chromeOtherPssKb` | {'int': 3011} |
| `chromeProcesses` | {'int': 3011} |
| `chromeProfiles` | {'int': 3011} |
| `chromeRendererMaxPssKb` | {'int': 3011} |
| `chromeRendererPssKb` | {'int': 3011} |
| `chromeRenderers` | {'int': 3011} |
| `chromeTabs` | {'int': 3011} |
| `chromeTabsProbedProfiles` | {'int': 3011} |
| `chromeUtilityPssKb` | {'int': 3011} |
| `desktopPssKb` | {'int': 3011} |
| `hostPssKb` | {'int': 3011} |
| `kind` | {'str': 3011} |
| `memAvailableKb` | {'int': 3011} |
| `memTotalKb` | {'int': 3011} |
| `otherPssKb` | {'int': 3011} |
| `processes` | {'int': 3011} |
| `pssFallbackProcesses` | {'int': 3011} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
