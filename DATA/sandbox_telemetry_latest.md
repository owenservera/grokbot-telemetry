# sandbox_telemetry_parse — 2026-11-11 02:05:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1426400 lines=3160
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3151 |
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
| `chromeBrowserPssKb` | {'int': 3151} |
| `chromeGpuPssKb` | {'int': 3151} |
| `chromeOtherPssKb` | {'int': 3151} |
| `chromeProcesses` | {'int': 3151} |
| `chromeProfiles` | {'int': 3151} |
| `chromeRendererMaxPssKb` | {'int': 3151} |
| `chromeRendererPssKb` | {'int': 3151} |
| `chromeRenderers` | {'int': 3151} |
| `chromeTabs` | {'int': 3151} |
| `chromeTabsProbedProfiles` | {'int': 3151} |
| `chromeUtilityPssKb` | {'int': 3151} |
| `desktopPssKb` | {'int': 3151} |
| `hostPssKb` | {'int': 3151} |
| `kind` | {'str': 3151} |
| `memAvailableKb` | {'int': 3151} |
| `memTotalKb` | {'int': 3151} |
| `otherPssKb` | {'int': 3151} |
| `processes` | {'int': 3151} |
| `pssFallbackProcesses` | {'int': 3151} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
