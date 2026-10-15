# sandbox_telemetry_parse — 2026-10-16 00:25:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1127658 lines=2499
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2494 |
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
| `chromeBrowserPssKb` | {'int': 2494} |
| `chromeGpuPssKb` | {'int': 2494} |
| `chromeOtherPssKb` | {'int': 2494} |
| `chromeProcesses` | {'int': 2494} |
| `chromeProfiles` | {'int': 2494} |
| `chromeRendererMaxPssKb` | {'int': 2494} |
| `chromeRendererPssKb` | {'int': 2494} |
| `chromeRenderers` | {'int': 2494} |
| `chromeTabs` | {'int': 2494} |
| `chromeTabsProbedProfiles` | {'int': 2494} |
| `chromeUtilityPssKb` | {'int': 2494} |
| `desktopPssKb` | {'int': 2494} |
| `hostPssKb` | {'int': 2494} |
| `kind` | {'str': 2494} |
| `memAvailableKb` | {'int': 2494} |
| `memTotalKb` | {'int': 2494} |
| `otherPssKb` | {'int': 2494} |
| `processes` | {'int': 2494} |
| `pssFallbackProcesses` | {'int': 2494} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
