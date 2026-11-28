# sandbox_telemetry_parse — 2026-11-28 20:16:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1040389 lines=2306
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2298 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2298} |
| `chromeGpuPssKb` | {'int': 2298} |
| `chromeOtherPssKb` | {'int': 2298} |
| `chromeProcesses` | {'int': 2298} |
| `chromeProfiles` | {'int': 2298} |
| `chromeRendererMaxPssKb` | {'int': 2298} |
| `chromeRendererPssKb` | {'int': 2298} |
| `chromeRenderers` | {'int': 2298} |
| `chromeTabs` | {'int': 2298} |
| `chromeTabsProbedProfiles` | {'int': 2298} |
| `chromeUtilityPssKb` | {'int': 2298} |
| `desktopPssKb` | {'int': 2298} |
| `hostPssKb` | {'int': 2298} |
| `kind` | {'str': 2298} |
| `memAvailableKb` | {'int': 2298} |
| `memTotalKb` | {'int': 2298} |
| `otherPssKb` | {'int': 2298} |
| `processes` | {'int': 2298} |
| `pssFallbackProcesses` | {'int': 2298} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
