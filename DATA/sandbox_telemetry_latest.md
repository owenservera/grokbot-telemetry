# sandbox_telemetry_parse — 2026-10-27 06:16:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=365268 lines=811
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 806 |
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
| `chromeBrowserPssKb` | {'int': 806} |
| `chromeGpuPssKb` | {'int': 806} |
| `chromeOtherPssKb` | {'int': 806} |
| `chromeProcesses` | {'int': 806} |
| `chromeProfiles` | {'int': 806} |
| `chromeRendererMaxPssKb` | {'int': 806} |
| `chromeRendererPssKb` | {'int': 806} |
| `chromeRenderers` | {'int': 806} |
| `chromeTabs` | {'int': 806} |
| `chromeTabsProbedProfiles` | {'int': 806} |
| `chromeUtilityPssKb` | {'int': 806} |
| `desktopPssKb` | {'int': 806} |
| `hostPssKb` | {'int': 806} |
| `kind` | {'str': 806} |
| `memAvailableKb` | {'int': 806} |
| `memTotalKb` | {'int': 806} |
| `otherPssKb` | {'int': 806} |
| `processes` | {'int': 806} |
| `pssFallbackProcesses` | {'int': 806} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
