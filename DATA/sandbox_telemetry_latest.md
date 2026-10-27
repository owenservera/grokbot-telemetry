# sandbox_telemetry_parse — 2026-10-27 09:42:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=447080 lines=992
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 987 |
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
| `chromeBrowserPssKb` | {'int': 987} |
| `chromeGpuPssKb` | {'int': 987} |
| `chromeOtherPssKb` | {'int': 987} |
| `chromeProcesses` | {'int': 987} |
| `chromeProfiles` | {'int': 987} |
| `chromeRendererMaxPssKb` | {'int': 987} |
| `chromeRendererPssKb` | {'int': 987} |
| `chromeRenderers` | {'int': 987} |
| `chromeTabs` | {'int': 987} |
| `chromeTabsProbedProfiles` | {'int': 987} |
| `chromeUtilityPssKb` | {'int': 987} |
| `desktopPssKb` | {'int': 987} |
| `hostPssKb` | {'int': 987} |
| `kind` | {'str': 987} |
| `memAvailableKb` | {'int': 987} |
| `memTotalKb` | {'int': 987} |
| `otherPssKb` | {'int': 987} |
| `processes` | {'int': 987} |
| `pssFallbackProcesses` | {'int': 987} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
