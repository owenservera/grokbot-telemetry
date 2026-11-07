# sandbox_telemetry_parse — 2026-11-07 12:00:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=451671 lines=1006
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 997 |
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
| `chromeBrowserPssKb` | {'int': 997} |
| `chromeGpuPssKb` | {'int': 997} |
| `chromeOtherPssKb` | {'int': 997} |
| `chromeProcesses` | {'int': 997} |
| `chromeProfiles` | {'int': 997} |
| `chromeRendererMaxPssKb` | {'int': 997} |
| `chromeRendererPssKb` | {'int': 997} |
| `chromeRenderers` | {'int': 997} |
| `chromeTabs` | {'int': 997} |
| `chromeTabsProbedProfiles` | {'int': 997} |
| `chromeUtilityPssKb` | {'int': 997} |
| `desktopPssKb` | {'int': 997} |
| `hostPssKb` | {'int': 997} |
| `kind` | {'str': 997} |
| `memAvailableKb` | {'int': 997} |
| `memTotalKb` | {'int': 997} |
| `otherPssKb` | {'int': 997} |
| `processes` | {'int': 997} |
| `pssFallbackProcesses` | {'int': 997} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
