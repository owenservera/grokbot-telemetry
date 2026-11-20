# sandbox_telemetry_parse — 2026-11-20 04:59:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1579646 lines=3502
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3491 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3491} |
| `chromeGpuPssKb` | {'int': 3491} |
| `chromeOtherPssKb` | {'int': 3491} |
| `chromeProcesses` | {'int': 3491} |
| `chromeProfiles` | {'int': 3491} |
| `chromeRendererMaxPssKb` | {'int': 3491} |
| `chromeRendererPssKb` | {'int': 3491} |
| `chromeRenderers` | {'int': 3491} |
| `chromeTabs` | {'int': 3491} |
| `chromeTabsProbedProfiles` | {'int': 3491} |
| `chromeUtilityPssKb` | {'int': 3491} |
| `desktopPssKb` | {'int': 3491} |
| `hostPssKb` | {'int': 3491} |
| `kind` | {'str': 3491} |
| `memAvailableKb` | {'int': 3491} |
| `memTotalKb` | {'int': 3491} |
| `otherPssKb` | {'int': 3491} |
| `processes` | {'int': 3491} |
| `pssFallbackProcesses` | {'int': 3491} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
