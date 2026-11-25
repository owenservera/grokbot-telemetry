# sandbox_telemetry_parse — 2026-11-25 10:16:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2713584 lines=6012
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5997 |
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
| `chromeBrowserPssKb` | {'int': 5997} |
| `chromeGpuPssKb` | {'int': 5997} |
| `chromeOtherPssKb` | {'int': 5997} |
| `chromeProcesses` | {'int': 5997} |
| `chromeProfiles` | {'int': 5997} |
| `chromeRendererMaxPssKb` | {'int': 5997} |
| `chromeRendererPssKb` | {'int': 5997} |
| `chromeRenderers` | {'int': 5997} |
| `chromeTabs` | {'int': 5997} |
| `chromeTabsProbedProfiles` | {'int': 5997} |
| `chromeUtilityPssKb` | {'int': 5997} |
| `desktopPssKb` | {'int': 5997} |
| `hostPssKb` | {'int': 5997} |
| `kind` | {'str': 5997} |
| `memAvailableKb` | {'int': 5997} |
| `memTotalKb` | {'int': 5997} |
| `otherPssKb` | {'int': 5997} |
| `processes` | {'int': 5997} |
| `pssFallbackProcesses` | {'int': 5997} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
