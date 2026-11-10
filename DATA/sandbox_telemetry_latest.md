# sandbox_telemetry_parse — 2026-11-10 23:17:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1370296 lines=3036
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3027 |
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
| `chromeBrowserPssKb` | {'int': 3027} |
| `chromeGpuPssKb` | {'int': 3027} |
| `chromeOtherPssKb` | {'int': 3027} |
| `chromeProcesses` | {'int': 3027} |
| `chromeProfiles` | {'int': 3027} |
| `chromeRendererMaxPssKb` | {'int': 3027} |
| `chromeRendererPssKb` | {'int': 3027} |
| `chromeRenderers` | {'int': 3027} |
| `chromeTabs` | {'int': 3027} |
| `chromeTabsProbedProfiles` | {'int': 3027} |
| `chromeUtilityPssKb` | {'int': 3027} |
| `desktopPssKb` | {'int': 3027} |
| `hostPssKb` | {'int': 3027} |
| `kind` | {'str': 3027} |
| `memAvailableKb` | {'int': 3027} |
| `memTotalKb` | {'int': 3027} |
| `otherPssKb` | {'int': 3027} |
| `processes` | {'int': 3027} |
| `pssFallbackProcesses` | {'int': 3027} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
