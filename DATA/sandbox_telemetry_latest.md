# sandbox_telemetry_parse — 2026-11-12 00:05:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1881567 lines=4166
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4157 |
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
| `chromeBrowserPssKb` | {'int': 4157} |
| `chromeGpuPssKb` | {'int': 4157} |
| `chromeOtherPssKb` | {'int': 4157} |
| `chromeProcesses` | {'int': 4157} |
| `chromeProfiles` | {'int': 4157} |
| `chromeRendererMaxPssKb` | {'int': 4157} |
| `chromeRendererPssKb` | {'int': 4157} |
| `chromeRenderers` | {'int': 4157} |
| `chromeTabs` | {'int': 4157} |
| `chromeTabsProbedProfiles` | {'int': 4157} |
| `chromeUtilityPssKb` | {'int': 4157} |
| `desktopPssKb` | {'int': 4157} |
| `hostPssKb` | {'int': 4157} |
| `kind` | {'str': 4157} |
| `memAvailableKb` | {'int': 4157} |
| `memTotalKb` | {'int': 4157} |
| `otherPssKb` | {'int': 4157} |
| `processes` | {'int': 4157} |
| `pssFallbackProcesses` | {'int': 4157} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
