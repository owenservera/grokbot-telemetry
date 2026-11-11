# sandbox_telemetry_parse — 2026-11-11 10:33:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1586485 lines=3514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3505 |
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
| `chromeBrowserPssKb` | {'int': 3505} |
| `chromeGpuPssKb` | {'int': 3505} |
| `chromeOtherPssKb` | {'int': 3505} |
| `chromeProcesses` | {'int': 3505} |
| `chromeProfiles` | {'int': 3505} |
| `chromeRendererMaxPssKb` | {'int': 3505} |
| `chromeRendererPssKb` | {'int': 3505} |
| `chromeRenderers` | {'int': 3505} |
| `chromeTabs` | {'int': 3505} |
| `chromeTabsProbedProfiles` | {'int': 3505} |
| `chromeUtilityPssKb` | {'int': 3505} |
| `desktopPssKb` | {'int': 3505} |
| `hostPssKb` | {'int': 3505} |
| `kind` | {'str': 3505} |
| `memAvailableKb` | {'int': 3505} |
| `memTotalKb` | {'int': 3505} |
| `otherPssKb` | {'int': 3505} |
| `processes` | {'int': 3505} |
| `pssFallbackProcesses` | {'int': 3505} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
