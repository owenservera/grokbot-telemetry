# sandbox_telemetry_parse — 2026-11-11 21:07:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1815935 lines=4021
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4012 |
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
| `chromeBrowserPssKb` | {'int': 4012} |
| `chromeGpuPssKb` | {'int': 4012} |
| `chromeOtherPssKb` | {'int': 4012} |
| `chromeProcesses` | {'int': 4012} |
| `chromeProfiles` | {'int': 4012} |
| `chromeRendererMaxPssKb` | {'int': 4012} |
| `chromeRendererPssKb` | {'int': 4012} |
| `chromeRenderers` | {'int': 4012} |
| `chromeTabs` | {'int': 4012} |
| `chromeTabsProbedProfiles` | {'int': 4012} |
| `chromeUtilityPssKb` | {'int': 4012} |
| `desktopPssKb` | {'int': 4012} |
| `hostPssKb` | {'int': 4012} |
| `kind` | {'str': 4012} |
| `memAvailableKb` | {'int': 4012} |
| `memTotalKb` | {'int': 4012} |
| `otherPssKb` | {'int': 4012} |
| `processes` | {'int': 4012} |
| `pssFallbackProcesses` | {'int': 4012} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
