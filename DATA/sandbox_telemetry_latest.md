# sandbox_telemetry_parse — 2026-11-24 08:24:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2204212 lines=4886
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4871 |
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
| `chromeBrowserPssKb` | {'int': 4871} |
| `chromeGpuPssKb` | {'int': 4871} |
| `chromeOtherPssKb` | {'int': 4871} |
| `chromeProcesses` | {'int': 4871} |
| `chromeProfiles` | {'int': 4871} |
| `chromeRendererMaxPssKb` | {'int': 4871} |
| `chromeRendererPssKb` | {'int': 4871} |
| `chromeRenderers` | {'int': 4871} |
| `chromeTabs` | {'int': 4871} |
| `chromeTabsProbedProfiles` | {'int': 4871} |
| `chromeUtilityPssKb` | {'int': 4871} |
| `desktopPssKb` | {'int': 4871} |
| `hostPssKb` | {'int': 4871} |
| `kind` | {'str': 4871} |
| `memAvailableKb` | {'int': 4871} |
| `memTotalKb` | {'int': 4871} |
| `otherPssKb` | {'int': 4871} |
| `processes` | {'int': 4871} |
| `pssFallbackProcesses` | {'int': 4871} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
