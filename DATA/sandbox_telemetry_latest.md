# sandbox_telemetry_parse — 2026-11-19 16:40:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1356215 lines=3008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2997 |
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
| `chromeBrowserPssKb` | {'int': 2997} |
| `chromeGpuPssKb` | {'int': 2997} |
| `chromeOtherPssKb` | {'int': 2997} |
| `chromeProcesses` | {'int': 2997} |
| `chromeProfiles` | {'int': 2997} |
| `chromeRendererMaxPssKb` | {'int': 2997} |
| `chromeRendererPssKb` | {'int': 2997} |
| `chromeRenderers` | {'int': 2997} |
| `chromeTabs` | {'int': 2997} |
| `chromeTabsProbedProfiles` | {'int': 2997} |
| `chromeUtilityPssKb` | {'int': 2997} |
| `desktopPssKb` | {'int': 2997} |
| `hostPssKb` | {'int': 2997} |
| `kind` | {'str': 2997} |
| `memAvailableKb` | {'int': 2997} |
| `memTotalKb` | {'int': 2997} |
| `otherPssKb` | {'int': 2997} |
| `processes` | {'int': 2997} |
| `pssFallbackProcesses` | {'int': 2997} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
