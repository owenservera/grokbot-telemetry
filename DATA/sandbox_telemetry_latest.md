# sandbox_telemetry_parse — 2026-10-06 14:44:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=429290 lines=946
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 941 |
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
| `chromeBrowserPssKb` | {'int': 941} |
| `chromeGpuPssKb` | {'int': 941} |
| `chromeOtherPssKb` | {'int': 941} |
| `chromeProcesses` | {'int': 941} |
| `chromeProfiles` | {'int': 941} |
| `chromeRendererMaxPssKb` | {'int': 941} |
| `chromeRendererPssKb` | {'int': 941} |
| `chromeRenderers` | {'int': 941} |
| `chromeTabs` | {'int': 941} |
| `chromeTabsProbedProfiles` | {'int': 941} |
| `chromeUtilityPssKb` | {'int': 941} |
| `desktopPssKb` | {'int': 941} |
| `hostPssKb` | {'int': 941} |
| `kind` | {'str': 941} |
| `memAvailableKb` | {'int': 941} |
| `memTotalKb` | {'int': 941} |
| `otherPssKb` | {'int': 941} |
| `processes` | {'int': 941} |
| `pssFallbackProcesses` | {'int': 941} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
