# sandbox_telemetry_parse — 2026-10-06 22:36:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=643610 lines=1416
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1411 |
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
| `chromeBrowserPssKb` | {'int': 1411} |
| `chromeGpuPssKb` | {'int': 1411} |
| `chromeOtherPssKb` | {'int': 1411} |
| `chromeProcesses` | {'int': 1411} |
| `chromeProfiles` | {'int': 1411} |
| `chromeRendererMaxPssKb` | {'int': 1411} |
| `chromeRendererPssKb` | {'int': 1411} |
| `chromeRenderers` | {'int': 1411} |
| `chromeTabs` | {'int': 1411} |
| `chromeTabsProbedProfiles` | {'int': 1411} |
| `chromeUtilityPssKb` | {'int': 1411} |
| `desktopPssKb` | {'int': 1411} |
| `hostPssKb` | {'int': 1411} |
| `kind` | {'str': 1411} |
| `memAvailableKb` | {'int': 1411} |
| `memTotalKb` | {'int': 1411} |
| `otherPssKb` | {'int': 1411} |
| `processes` | {'int': 1411} |
| `pssFallbackProcesses` | {'int': 1411} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
