# sandbox_telemetry_parse — 2026-10-06 17:45:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=511826 lines=1127
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1122 |
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
| `chromeBrowserPssKb` | {'int': 1122} |
| `chromeGpuPssKb` | {'int': 1122} |
| `chromeOtherPssKb` | {'int': 1122} |
| `chromeProcesses` | {'int': 1122} |
| `chromeProfiles` | {'int': 1122} |
| `chromeRendererMaxPssKb` | {'int': 1122} |
| `chromeRendererPssKb` | {'int': 1122} |
| `chromeRenderers` | {'int': 1122} |
| `chromeTabs` | {'int': 1122} |
| `chromeTabsProbedProfiles` | {'int': 1122} |
| `chromeUtilityPssKb` | {'int': 1122} |
| `desktopPssKb` | {'int': 1122} |
| `hostPssKb` | {'int': 1122} |
| `kind` | {'str': 1122} |
| `memAvailableKb` | {'int': 1122} |
| `memTotalKb` | {'int': 1122} |
| `otherPssKb` | {'int': 1122} |
| `processes` | {'int': 1122} |
| `pssFallbackProcesses` | {'int': 1122} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
