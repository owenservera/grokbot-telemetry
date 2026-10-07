# sandbox_telemetry_parse — 2026-10-07 14:34:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1075621 lines=2363
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2358 |
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
| `chromeBrowserPssKb` | {'int': 2358} |
| `chromeGpuPssKb` | {'int': 2358} |
| `chromeOtherPssKb` | {'int': 2358} |
| `chromeProcesses` | {'int': 2358} |
| `chromeProfiles` | {'int': 2358} |
| `chromeRendererMaxPssKb` | {'int': 2358} |
| `chromeRendererPssKb` | {'int': 2358} |
| `chromeRenderers` | {'int': 2358} |
| `chromeTabs` | {'int': 2358} |
| `chromeTabsProbedProfiles` | {'int': 2358} |
| `chromeUtilityPssKb` | {'int': 2358} |
| `desktopPssKb` | {'int': 2358} |
| `hostPssKb` | {'int': 2358} |
| `kind` | {'str': 2358} |
| `memAvailableKb` | {'int': 2358} |
| `memTotalKb` | {'int': 2358} |
| `otherPssKb` | {'int': 2358} |
| `processes` | {'int': 2358} |
| `pssFallbackProcesses` | {'int': 2358} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
