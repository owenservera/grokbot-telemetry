# sandbox_telemetry_parse — 2026-11-20 02:07:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1533090 lines=3399
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3388 |
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
| `chromeBrowserPssKb` | {'int': 3388} |
| `chromeGpuPssKb` | {'int': 3388} |
| `chromeOtherPssKb` | {'int': 3388} |
| `chromeProcesses` | {'int': 3388} |
| `chromeProfiles` | {'int': 3388} |
| `chromeRendererMaxPssKb` | {'int': 3388} |
| `chromeRendererPssKb` | {'int': 3388} |
| `chromeRenderers` | {'int': 3388} |
| `chromeTabs` | {'int': 3388} |
| `chromeTabsProbedProfiles` | {'int': 3388} |
| `chromeUtilityPssKb` | {'int': 3388} |
| `desktopPssKb` | {'int': 3388} |
| `hostPssKb` | {'int': 3388} |
| `kind` | {'str': 3388} |
| `memAvailableKb` | {'int': 3388} |
| `memTotalKb` | {'int': 3388} |
| `otherPssKb` | {'int': 3388} |
| `processes` | {'int': 3388} |
| `pssFallbackProcesses` | {'int': 3388} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
