# sandbox_telemetry_parse — 2026-11-24 04:49:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2135017 lines=4733
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4718 |
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
| `chromeBrowserPssKb` | {'int': 4718} |
| `chromeGpuPssKb` | {'int': 4718} |
| `chromeOtherPssKb` | {'int': 4718} |
| `chromeProcesses` | {'int': 4718} |
| `chromeProfiles` | {'int': 4718} |
| `chromeRendererMaxPssKb` | {'int': 4718} |
| `chromeRendererPssKb` | {'int': 4718} |
| `chromeRenderers` | {'int': 4718} |
| `chromeTabs` | {'int': 4718} |
| `chromeTabsProbedProfiles` | {'int': 4718} |
| `chromeUtilityPssKb` | {'int': 4718} |
| `desktopPssKb` | {'int': 4718} |
| `hostPssKb` | {'int': 4718} |
| `kind` | {'str': 4718} |
| `memAvailableKb` | {'int': 4718} |
| `memTotalKb` | {'int': 4718} |
| `otherPssKb` | {'int': 4718} |
| `processes` | {'int': 4718} |
| `pssFallbackProcesses` | {'int': 4718} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
