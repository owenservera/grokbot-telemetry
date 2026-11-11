# sandbox_telemetry_parse — 2026-11-11 15:09:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1687403 lines=3737
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3728 |
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
| `chromeBrowserPssKb` | {'int': 3728} |
| `chromeGpuPssKb` | {'int': 3728} |
| `chromeOtherPssKb` | {'int': 3728} |
| `chromeProcesses` | {'int': 3728} |
| `chromeProfiles` | {'int': 3728} |
| `chromeRendererMaxPssKb` | {'int': 3728} |
| `chromeRendererPssKb` | {'int': 3728} |
| `chromeRenderers` | {'int': 3728} |
| `chromeTabs` | {'int': 3728} |
| `chromeTabsProbedProfiles` | {'int': 3728} |
| `chromeUtilityPssKb` | {'int': 3728} |
| `desktopPssKb` | {'int': 3728} |
| `hostPssKb` | {'int': 3728} |
| `kind` | {'str': 3728} |
| `memAvailableKb` | {'int': 3728} |
| `memTotalKb` | {'int': 3728} |
| `otherPssKb` | {'int': 3728} |
| `processes` | {'int': 3728} |
| `pssFallbackProcesses` | {'int': 3728} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
