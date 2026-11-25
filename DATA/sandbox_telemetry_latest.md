# sandbox_telemetry_parse — 2026-11-25 19:56:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2900777 lines=6426
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6411 |
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
| `chromeBrowserPssKb` | {'int': 6411} |
| `chromeGpuPssKb` | {'int': 6411} |
| `chromeOtherPssKb` | {'int': 6411} |
| `chromeProcesses` | {'int': 6411} |
| `chromeProfiles` | {'int': 6411} |
| `chromeRendererMaxPssKb` | {'int': 6411} |
| `chromeRendererPssKb` | {'int': 6411} |
| `chromeRenderers` | {'int': 6411} |
| `chromeTabs` | {'int': 6411} |
| `chromeTabsProbedProfiles` | {'int': 6411} |
| `chromeUtilityPssKb` | {'int': 6411} |
| `desktopPssKb` | {'int': 6411} |
| `hostPssKb` | {'int': 6411} |
| `kind` | {'str': 6411} |
| `memAvailableKb` | {'int': 6411} |
| `memTotalKb` | {'int': 6411} |
| `otherPssKb` | {'int': 6411} |
| `processes` | {'int': 6411} |
| `pssFallbackProcesses` | {'int': 6411} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
