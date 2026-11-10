# sandbox_telemetry_parse — 2026-11-10 06:40:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1024013 lines=2271
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2262 |
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
| `chromeBrowserPssKb` | {'int': 2262} |
| `chromeGpuPssKb` | {'int': 2262} |
| `chromeOtherPssKb` | {'int': 2262} |
| `chromeProcesses` | {'int': 2262} |
| `chromeProfiles` | {'int': 2262} |
| `chromeRendererMaxPssKb` | {'int': 2262} |
| `chromeRendererPssKb` | {'int': 2262} |
| `chromeRenderers` | {'int': 2262} |
| `chromeTabs` | {'int': 2262} |
| `chromeTabsProbedProfiles` | {'int': 2262} |
| `chromeUtilityPssKb` | {'int': 2262} |
| `desktopPssKb` | {'int': 2262} |
| `hostPssKb` | {'int': 2262} |
| `kind` | {'str': 2262} |
| `memAvailableKb` | {'int': 2262} |
| `memTotalKb` | {'int': 2262} |
| `otherPssKb` | {'int': 2262} |
| `processes` | {'int': 2262} |
| `pssFallbackProcesses` | {'int': 2262} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
