# sandbox_telemetry_parse — 2026-11-28 17:39:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=989223 lines=2193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2185 |
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
| `chromeBrowserPssKb` | {'int': 2185} |
| `chromeGpuPssKb` | {'int': 2185} |
| `chromeOtherPssKb` | {'int': 2185} |
| `chromeProcesses` | {'int': 2185} |
| `chromeProfiles` | {'int': 2185} |
| `chromeRendererMaxPssKb` | {'int': 2185} |
| `chromeRendererPssKb` | {'int': 2185} |
| `chromeRenderers` | {'int': 2185} |
| `chromeTabs` | {'int': 2185} |
| `chromeTabsProbedProfiles` | {'int': 2185} |
| `chromeUtilityPssKb` | {'int': 2185} |
| `desktopPssKb` | {'int': 2185} |
| `hostPssKb` | {'int': 2185} |
| `kind` | {'str': 2185} |
| `memAvailableKb` | {'int': 2185} |
| `memTotalKb` | {'int': 2185} |
| `otherPssKb` | {'int': 2185} |
| `processes` | {'int': 2185} |
| `pssFallbackProcesses` | {'int': 2185} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
