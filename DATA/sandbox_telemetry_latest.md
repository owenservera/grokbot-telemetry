# sandbox_telemetry_parse — 2026-11-10 21:25:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1330031 lines=2947
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2938 |
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
| `chromeBrowserPssKb` | {'int': 2938} |
| `chromeGpuPssKb` | {'int': 2938} |
| `chromeOtherPssKb` | {'int': 2938} |
| `chromeProcesses` | {'int': 2938} |
| `chromeProfiles` | {'int': 2938} |
| `chromeRendererMaxPssKb` | {'int': 2938} |
| `chromeRendererPssKb` | {'int': 2938} |
| `chromeRenderers` | {'int': 2938} |
| `chromeTabs` | {'int': 2938} |
| `chromeTabsProbedProfiles` | {'int': 2938} |
| `chromeUtilityPssKb` | {'int': 2938} |
| `desktopPssKb` | {'int': 2938} |
| `hostPssKb` | {'int': 2938} |
| `kind` | {'str': 2938} |
| `memAvailableKb` | {'int': 2938} |
| `memTotalKb` | {'int': 2938} |
| `otherPssKb` | {'int': 2938} |
| `processes` | {'int': 2938} |
| `pssFallbackProcesses` | {'int': 2938} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
