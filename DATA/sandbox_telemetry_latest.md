# sandbox_telemetry_parse — 2026-11-06 22:23:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=191621 lines=431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 422 |
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
| `chromeBrowserPssKb` | {'int': 422} |
| `chromeGpuPssKb` | {'int': 422} |
| `chromeOtherPssKb` | {'int': 422} |
| `chromeProcesses` | {'int': 422} |
| `chromeProfiles` | {'int': 422} |
| `chromeRendererMaxPssKb` | {'int': 422} |
| `chromeRendererPssKb` | {'int': 422} |
| `chromeRenderers` | {'int': 422} |
| `chromeTabs` | {'int': 422} |
| `chromeTabsProbedProfiles` | {'int': 422} |
| `chromeUtilityPssKb` | {'int': 422} |
| `desktopPssKb` | {'int': 422} |
| `hostPssKb` | {'int': 422} |
| `kind` | {'str': 422} |
| `memAvailableKb` | {'int': 422} |
| `memTotalKb` | {'int': 422} |
| `otherPssKb` | {'int': 422} |
| `processes` | {'int': 422} |
| `pssFallbackProcesses` | {'int': 422} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
