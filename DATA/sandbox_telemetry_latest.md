# sandbox_telemetry_parse — 2026-11-11 05:12:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1484719 lines=3289
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3280 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3280} |
| `chromeGpuPssKb` | {'int': 3280} |
| `chromeOtherPssKb` | {'int': 3280} |
| `chromeProcesses` | {'int': 3280} |
| `chromeProfiles` | {'int': 3280} |
| `chromeRendererMaxPssKb` | {'int': 3280} |
| `chromeRendererPssKb` | {'int': 3280} |
| `chromeRenderers` | {'int': 3280} |
| `chromeTabs` | {'int': 3280} |
| `chromeTabsProbedProfiles` | {'int': 3280} |
| `chromeUtilityPssKb` | {'int': 3280} |
| `desktopPssKb` | {'int': 3280} |
| `hostPssKb` | {'int': 3280} |
| `kind` | {'str': 3280} |
| `memAvailableKb` | {'int': 3280} |
| `memTotalKb` | {'int': 3280} |
| `otherPssKb` | {'int': 3280} |
| `processes` | {'int': 3280} |
| `pssFallbackProcesses` | {'int': 3280} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
