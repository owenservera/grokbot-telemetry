# sandbox_telemetry_parse — 2026-10-07 14:23:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1071061 lines=2353
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2348 |
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
| `chromeBrowserPssKb` | {'int': 2348} |
| `chromeGpuPssKb` | {'int': 2348} |
| `chromeOtherPssKb` | {'int': 2348} |
| `chromeProcesses` | {'int': 2348} |
| `chromeProfiles` | {'int': 2348} |
| `chromeRendererMaxPssKb` | {'int': 2348} |
| `chromeRendererPssKb` | {'int': 2348} |
| `chromeRenderers` | {'int': 2348} |
| `chromeTabs` | {'int': 2348} |
| `chromeTabsProbedProfiles` | {'int': 2348} |
| `chromeUtilityPssKb` | {'int': 2348} |
| `desktopPssKb` | {'int': 2348} |
| `hostPssKb` | {'int': 2348} |
| `kind` | {'str': 2348} |
| `memAvailableKb` | {'int': 2348} |
| `memTotalKb` | {'int': 2348} |
| `otherPssKb` | {'int': 2348} |
| `processes` | {'int': 2348} |
| `pssFallbackProcesses` | {'int': 2348} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
