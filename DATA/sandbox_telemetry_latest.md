# sandbox_telemetry_parse — 2026-10-27 01:14:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=241830 lines=538
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 533 |
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
| `chromeBrowserPssKb` | {'int': 533} |
| `chromeGpuPssKb` | {'int': 533} |
| `chromeOtherPssKb` | {'int': 533} |
| `chromeProcesses` | {'int': 533} |
| `chromeProfiles` | {'int': 533} |
| `chromeRendererMaxPssKb` | {'int': 533} |
| `chromeRendererPssKb` | {'int': 533} |
| `chromeRenderers` | {'int': 533} |
| `chromeTabs` | {'int': 533} |
| `chromeTabsProbedProfiles` | {'int': 533} |
| `chromeUtilityPssKb` | {'int': 533} |
| `desktopPssKb` | {'int': 533} |
| `hostPssKb` | {'int': 533} |
| `kind` | {'str': 533} |
| `memAvailableKb` | {'int': 533} |
| `memTotalKb` | {'int': 533} |
| `otherPssKb` | {'int': 533} |
| `processes` | {'int': 533} |
| `pssFallbackProcesses` | {'int': 533} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
