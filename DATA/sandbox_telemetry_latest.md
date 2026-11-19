# sandbox_telemetry_parse — 2026-11-19 17:03:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1363001 lines=3023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3012 |
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
| `chromeBrowserPssKb` | {'int': 3012} |
| `chromeGpuPssKb` | {'int': 3012} |
| `chromeOtherPssKb` | {'int': 3012} |
| `chromeProcesses` | {'int': 3012} |
| `chromeProfiles` | {'int': 3012} |
| `chromeRendererMaxPssKb` | {'int': 3012} |
| `chromeRendererPssKb` | {'int': 3012} |
| `chromeRenderers` | {'int': 3012} |
| `chromeTabs` | {'int': 3012} |
| `chromeTabsProbedProfiles` | {'int': 3012} |
| `chromeUtilityPssKb` | {'int': 3012} |
| `desktopPssKb` | {'int': 3012} |
| `hostPssKb` | {'int': 3012} |
| `kind` | {'str': 3012} |
| `memAvailableKb` | {'int': 3012} |
| `memTotalKb` | {'int': 3012} |
| `otherPssKb` | {'int': 3012} |
| `processes` | {'int': 3012} |
| `pssFallbackProcesses` | {'int': 3012} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
