# sandbox_telemetry_parse — 2026-11-24 11:17:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2261183 lines=5012
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4997 |
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
| `chromeBrowserPssKb` | {'int': 4997} |
| `chromeGpuPssKb` | {'int': 4997} |
| `chromeOtherPssKb` | {'int': 4997} |
| `chromeProcesses` | {'int': 4997} |
| `chromeProfiles` | {'int': 4997} |
| `chromeRendererMaxPssKb` | {'int': 4997} |
| `chromeRendererPssKb` | {'int': 4997} |
| `chromeRenderers` | {'int': 4997} |
| `chromeTabs` | {'int': 4997} |
| `chromeTabsProbedProfiles` | {'int': 4997} |
| `chromeUtilityPssKb` | {'int': 4997} |
| `desktopPssKb` | {'int': 4997} |
| `hostPssKb` | {'int': 4997} |
| `kind` | {'str': 4997} |
| `memAvailableKb` | {'int': 4997} |
| `memTotalKb` | {'int': 4997} |
| `otherPssKb` | {'int': 4997} |
| `processes` | {'int': 4997} |
| `pssFallbackProcesses` | {'int': 4997} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
