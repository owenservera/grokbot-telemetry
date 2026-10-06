# sandbox_telemetry_parse — 2026-10-06 05:47:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=187610 lines=416
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 411 |
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
| `chromeBrowserPssKb` | {'int': 411} |
| `chromeGpuPssKb` | {'int': 411} |
| `chromeOtherPssKb` | {'int': 411} |
| `chromeProcesses` | {'int': 411} |
| `chromeProfiles` | {'int': 411} |
| `chromeRendererMaxPssKb` | {'int': 411} |
| `chromeRendererPssKb` | {'int': 411} |
| `chromeRenderers` | {'int': 411} |
| `chromeTabs` | {'int': 411} |
| `chromeTabsProbedProfiles` | {'int': 411} |
| `chromeUtilityPssKb` | {'int': 411} |
| `desktopPssKb` | {'int': 411} |
| `hostPssKb` | {'int': 411} |
| `kind` | {'str': 411} |
| `memAvailableKb` | {'int': 411} |
| `memTotalKb` | {'int': 411} |
| `otherPssKb` | {'int': 411} |
| `processes` | {'int': 411} |
| `pssFallbackProcesses` | {'int': 411} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
