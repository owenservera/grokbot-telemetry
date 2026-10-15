# sandbox_telemetry_parse — 2026-10-16 01:09:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1145286 lines=2538
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2533 |
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
| `chromeBrowserPssKb` | {'int': 2533} |
| `chromeGpuPssKb` | {'int': 2533} |
| `chromeOtherPssKb` | {'int': 2533} |
| `chromeProcesses` | {'int': 2533} |
| `chromeProfiles` | {'int': 2533} |
| `chromeRendererMaxPssKb` | {'int': 2533} |
| `chromeRendererPssKb` | {'int': 2533} |
| `chromeRenderers` | {'int': 2533} |
| `chromeTabs` | {'int': 2533} |
| `chromeTabsProbedProfiles` | {'int': 2533} |
| `chromeUtilityPssKb` | {'int': 2533} |
| `desktopPssKb` | {'int': 2533} |
| `hostPssKb` | {'int': 2533} |
| `kind` | {'str': 2533} |
| `memAvailableKb` | {'int': 2533} |
| `memTotalKb` | {'int': 2533} |
| `otherPssKb` | {'int': 2533} |
| `processes` | {'int': 2533} |
| `pssFallbackProcesses` | {'int': 2533} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
