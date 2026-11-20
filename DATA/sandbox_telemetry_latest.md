# sandbox_telemetry_parse — 2026-11-20 08:17:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1635250 lines=3625
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3614 |
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
| `chromeBrowserPssKb` | {'int': 3614} |
| `chromeGpuPssKb` | {'int': 3614} |
| `chromeOtherPssKb` | {'int': 3614} |
| `chromeProcesses` | {'int': 3614} |
| `chromeProfiles` | {'int': 3614} |
| `chromeRendererMaxPssKb` | {'int': 3614} |
| `chromeRendererPssKb` | {'int': 3614} |
| `chromeRenderers` | {'int': 3614} |
| `chromeTabs` | {'int': 3614} |
| `chromeTabsProbedProfiles` | {'int': 3614} |
| `chromeUtilityPssKb` | {'int': 3614} |
| `desktopPssKb` | {'int': 3614} |
| `hostPssKb` | {'int': 3614} |
| `kind` | {'str': 3614} |
| `memAvailableKb` | {'int': 3614} |
| `memTotalKb` | {'int': 3614} |
| `otherPssKb` | {'int': 3614} |
| `processes` | {'int': 3614} |
| `pssFallbackProcesses` | {'int': 3614} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
