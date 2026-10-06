# sandbox_telemetry_parse — 2026-10-06 07:10:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=225458 lines=499
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 494 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 494} |
| `chromeGpuPssKb` | {'int': 494} |
| `chromeOtherPssKb` | {'int': 494} |
| `chromeProcesses` | {'int': 494} |
| `chromeProfiles` | {'int': 494} |
| `chromeRendererMaxPssKb` | {'int': 494} |
| `chromeRendererPssKb` | {'int': 494} |
| `chromeRenderers` | {'int': 494} |
| `chromeTabs` | {'int': 494} |
| `chromeTabsProbedProfiles` | {'int': 494} |
| `chromeUtilityPssKb` | {'int': 494} |
| `desktopPssKb` | {'int': 494} |
| `hostPssKb` | {'int': 494} |
| `kind` | {'str': 494} |
| `memAvailableKb` | {'int': 494} |
| `memTotalKb` | {'int': 494} |
| `otherPssKb` | {'int': 494} |
| `processes` | {'int': 494} |
| `pssFallbackProcesses` | {'int': 494} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
