# sandbox_telemetry_parse — 2026-11-26 13:39:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3274440 lines=7252
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7237 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7237} |
| `chromeGpuPssKb` | {'int': 7237} |
| `chromeOtherPssKb` | {'int': 7237} |
| `chromeProcesses` | {'int': 7237} |
| `chromeProfiles` | {'int': 7237} |
| `chromeRendererMaxPssKb` | {'int': 7237} |
| `chromeRendererPssKb` | {'int': 7237} |
| `chromeRenderers` | {'int': 7237} |
| `chromeTabs` | {'int': 7237} |
| `chromeTabsProbedProfiles` | {'int': 7237} |
| `chromeUtilityPssKb` | {'int': 7237} |
| `desktopPssKb` | {'int': 7237} |
| `hostPssKb` | {'int': 7237} |
| `kind` | {'str': 7237} |
| `memAvailableKb` | {'int': 7237} |
| `memTotalKb` | {'int': 7237} |
| `otherPssKb` | {'int': 7237} |
| `processes` | {'int': 7237} |
| `pssFallbackProcesses` | {'int': 7237} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
