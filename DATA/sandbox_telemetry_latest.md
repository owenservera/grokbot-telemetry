# sandbox_telemetry_parse — 2026-11-20 10:04:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1666897 lines=3695
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3684 |
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
| `chromeBrowserPssKb` | {'int': 3684} |
| `chromeGpuPssKb` | {'int': 3684} |
| `chromeOtherPssKb` | {'int': 3684} |
| `chromeProcesses` | {'int': 3684} |
| `chromeProfiles` | {'int': 3684} |
| `chromeRendererMaxPssKb` | {'int': 3684} |
| `chromeRendererPssKb` | {'int': 3684} |
| `chromeRenderers` | {'int': 3684} |
| `chromeTabs` | {'int': 3684} |
| `chromeTabsProbedProfiles` | {'int': 3684} |
| `chromeUtilityPssKb` | {'int': 3684} |
| `desktopPssKb` | {'int': 3684} |
| `hostPssKb` | {'int': 3684} |
| `kind` | {'str': 3684} |
| `memAvailableKb` | {'int': 3684} |
| `memTotalKb` | {'int': 3684} |
| `otherPssKb` | {'int': 3684} |
| `processes` | {'int': 3684} |
| `pssFallbackProcesses` | {'int': 3684} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
