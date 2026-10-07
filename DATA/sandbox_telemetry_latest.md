# sandbox_telemetry_parse — 2026-10-07 14:49:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1082461 lines=2378
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2373 |
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
| `chromeBrowserPssKb` | {'int': 2373} |
| `chromeGpuPssKb` | {'int': 2373} |
| `chromeOtherPssKb` | {'int': 2373} |
| `chromeProcesses` | {'int': 2373} |
| `chromeProfiles` | {'int': 2373} |
| `chromeRendererMaxPssKb` | {'int': 2373} |
| `chromeRendererPssKb` | {'int': 2373} |
| `chromeRenderers` | {'int': 2373} |
| `chromeTabs` | {'int': 2373} |
| `chromeTabsProbedProfiles` | {'int': 2373} |
| `chromeUtilityPssKb` | {'int': 2373} |
| `desktopPssKb` | {'int': 2373} |
| `hostPssKb` | {'int': 2373} |
| `kind` | {'str': 2373} |
| `memAvailableKb` | {'int': 2373} |
| `memTotalKb` | {'int': 2373} |
| `otherPssKb` | {'int': 2373} |
| `processes` | {'int': 2373} |
| `pssFallbackProcesses` | {'int': 2373} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
