# sandbox_telemetry_parse — 2026-10-12 23:29:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=693304 lines=1538
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1533 |
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
| `chromeBrowserPssKb` | {'int': 1533} |
| `chromeGpuPssKb` | {'int': 1533} |
| `chromeOtherPssKb` | {'int': 1533} |
| `chromeProcesses` | {'int': 1533} |
| `chromeProfiles` | {'int': 1533} |
| `chromeRendererMaxPssKb` | {'int': 1533} |
| `chromeRendererPssKb` | {'int': 1533} |
| `chromeRenderers` | {'int': 1533} |
| `chromeTabs` | {'int': 1533} |
| `chromeTabsProbedProfiles` | {'int': 1533} |
| `chromeUtilityPssKb` | {'int': 1533} |
| `desktopPssKb` | {'int': 1533} |
| `hostPssKb` | {'int': 1533} |
| `kind` | {'str': 1533} |
| `memAvailableKb` | {'int': 1533} |
| `memTotalKb` | {'int': 1533} |
| `otherPssKb` | {'int': 1533} |
| `processes` | {'int': 1533} |
| `pssFallbackProcesses` | {'int': 1533} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
