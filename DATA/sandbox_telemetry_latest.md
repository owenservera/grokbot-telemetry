# sandbox_telemetry_parse — 2026-10-26 17:00:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=31638 lines=74
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 69 |
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
| `chromeBrowserPssKb` | {'int': 69} |
| `chromeGpuPssKb` | {'int': 69} |
| `chromeOtherPssKb` | {'int': 69} |
| `chromeProcesses` | {'int': 69} |
| `chromeProfiles` | {'int': 69} |
| `chromeRendererMaxPssKb` | {'int': 69} |
| `chromeRendererPssKb` | {'int': 69} |
| `chromeRenderers` | {'int': 69} |
| `chromeTabs` | {'int': 69} |
| `chromeTabsProbedProfiles` | {'int': 69} |
| `chromeUtilityPssKb` | {'int': 69} |
| `desktopPssKb` | {'int': 69} |
| `hostPssKb` | {'int': 69} |
| `kind` | {'str': 69} |
| `memAvailableKb` | {'int': 69} |
| `memTotalKb` | {'int': 69} |
| `otherPssKb` | {'int': 69} |
| `processes` | {'int': 69} |
| `pssFallbackProcesses` | {'int': 69} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
