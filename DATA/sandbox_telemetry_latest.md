# sandbox_telemetry_parse — 2026-11-20 00:58:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1516818 lines=3363
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3352 |
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
| `chromeBrowserPssKb` | {'int': 3352} |
| `chromeGpuPssKb` | {'int': 3352} |
| `chromeOtherPssKb` | {'int': 3352} |
| `chromeProcesses` | {'int': 3352} |
| `chromeProfiles` | {'int': 3352} |
| `chromeRendererMaxPssKb` | {'int': 3352} |
| `chromeRendererPssKb` | {'int': 3352} |
| `chromeRenderers` | {'int': 3352} |
| `chromeTabs` | {'int': 3352} |
| `chromeTabsProbedProfiles` | {'int': 3352} |
| `chromeUtilityPssKb` | {'int': 3352} |
| `desktopPssKb` | {'int': 3352} |
| `hostPssKb` | {'int': 3352} |
| `kind` | {'str': 3352} |
| `memAvailableKb` | {'int': 3352} |
| `memTotalKb` | {'int': 3352} |
| `otherPssKb` | {'int': 3352} |
| `processes` | {'int': 3352} |
| `pssFallbackProcesses` | {'int': 3352} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
