# sandbox_telemetry_parse — 2026-11-25 03:16:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2567942 lines=5690
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5675 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5675} |
| `chromeGpuPssKb` | {'int': 5675} |
| `chromeOtherPssKb` | {'int': 5675} |
| `chromeProcesses` | {'int': 5675} |
| `chromeProfiles` | {'int': 5675} |
| `chromeRendererMaxPssKb` | {'int': 5675} |
| `chromeRendererPssKb` | {'int': 5675} |
| `chromeRenderers` | {'int': 5675} |
| `chromeTabs` | {'int': 5675} |
| `chromeTabsProbedProfiles` | {'int': 5675} |
| `chromeUtilityPssKb` | {'int': 5675} |
| `desktopPssKb` | {'int': 5675} |
| `hostPssKb` | {'int': 5675} |
| `kind` | {'str': 5675} |
| `memAvailableKb` | {'int': 5675} |
| `memTotalKb` | {'int': 5675} |
| `otherPssKb` | {'int': 5675} |
| `processes` | {'int': 5675} |
| `pssFallbackProcesses` | {'int': 5675} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
