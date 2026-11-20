# sandbox_telemetry_parse — 2026-11-20 06:03:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1595466 lines=3537
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3526 |
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
| `chromeBrowserPssKb` | {'int': 3526} |
| `chromeGpuPssKb` | {'int': 3526} |
| `chromeOtherPssKb` | {'int': 3526} |
| `chromeProcesses` | {'int': 3526} |
| `chromeProfiles` | {'int': 3526} |
| `chromeRendererMaxPssKb` | {'int': 3526} |
| `chromeRendererPssKb` | {'int': 3526} |
| `chromeRenderers` | {'int': 3526} |
| `chromeTabs` | {'int': 3526} |
| `chromeTabsProbedProfiles` | {'int': 3526} |
| `chromeUtilityPssKb` | {'int': 3526} |
| `desktopPssKb` | {'int': 3526} |
| `hostPssKb` | {'int': 3526} |
| `kind` | {'str': 3526} |
| `memAvailableKb` | {'int': 3526} |
| `memTotalKb` | {'int': 3526} |
| `otherPssKb` | {'int': 3526} |
| `processes` | {'int': 3526} |
| `pssFallbackProcesses` | {'int': 3526} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
