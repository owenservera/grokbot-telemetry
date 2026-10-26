# sandbox_telemetry_parse — 2026-10-26 21:48:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=158025 lines=353
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 348 |
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
| `chromeBrowserPssKb` | {'int': 348} |
| `chromeGpuPssKb` | {'int': 348} |
| `chromeOtherPssKb` | {'int': 348} |
| `chromeProcesses` | {'int': 348} |
| `chromeProfiles` | {'int': 348} |
| `chromeRendererMaxPssKb` | {'int': 348} |
| `chromeRendererPssKb` | {'int': 348} |
| `chromeRenderers` | {'int': 348} |
| `chromeTabs` | {'int': 348} |
| `chromeTabsProbedProfiles` | {'int': 348} |
| `chromeUtilityPssKb` | {'int': 348} |
| `desktopPssKb` | {'int': 348} |
| `hostPssKb` | {'int': 348} |
| `kind` | {'str': 348} |
| `memAvailableKb` | {'int': 348} |
| `memTotalKb` | {'int': 348} |
| `otherPssKb` | {'int': 348} |
| `processes` | {'int': 348} |
| `pssFallbackProcesses` | {'int': 348} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
