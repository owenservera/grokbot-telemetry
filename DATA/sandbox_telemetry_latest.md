# sandbox_telemetry_parse — 2026-11-11 09:43:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1567926 lines=3473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3464 |
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
| `chromeBrowserPssKb` | {'int': 3464} |
| `chromeGpuPssKb` | {'int': 3464} |
| `chromeOtherPssKb` | {'int': 3464} |
| `chromeProcesses` | {'int': 3464} |
| `chromeProfiles` | {'int': 3464} |
| `chromeRendererMaxPssKb` | {'int': 3464} |
| `chromeRendererPssKb` | {'int': 3464} |
| `chromeRenderers` | {'int': 3464} |
| `chromeTabs` | {'int': 3464} |
| `chromeTabsProbedProfiles` | {'int': 3464} |
| `chromeUtilityPssKb` | {'int': 3464} |
| `desktopPssKb` | {'int': 3464} |
| `hostPssKb` | {'int': 3464} |
| `kind` | {'str': 3464} |
| `memAvailableKb` | {'int': 3464} |
| `memTotalKb` | {'int': 3464} |
| `otherPssKb` | {'int': 3464} |
| `processes` | {'int': 3464} |
| `pssFallbackProcesses` | {'int': 3464} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
