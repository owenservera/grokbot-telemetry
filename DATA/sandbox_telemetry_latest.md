# sandbox_telemetry_parse — 2026-10-15 14:29:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=903014 lines=2002
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1997 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1997} |
| `chromeGpuPssKb` | {'int': 1997} |
| `chromeOtherPssKb` | {'int': 1997} |
| `chromeProcesses` | {'int': 1997} |
| `chromeProfiles` | {'int': 1997} |
| `chromeRendererMaxPssKb` | {'int': 1997} |
| `chromeRendererPssKb` | {'int': 1997} |
| `chromeRenderers` | {'int': 1997} |
| `chromeTabs` | {'int': 1997} |
| `chromeTabsProbedProfiles` | {'int': 1997} |
| `chromeUtilityPssKb` | {'int': 1997} |
| `desktopPssKb` | {'int': 1997} |
| `hostPssKb` | {'int': 1997} |
| `kind` | {'str': 1997} |
| `memAvailableKb` | {'int': 1997} |
| `memTotalKb` | {'int': 1997} |
| `otherPssKb` | {'int': 1997} |
| `processes` | {'int': 1997} |
| `pssFallbackProcesses` | {'int': 1997} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
