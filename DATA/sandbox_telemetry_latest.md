# sandbox_telemetry_parse — 2026-11-10 17:00:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1230427 lines=2727
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2718 |
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
| `chromeBrowserPssKb` | {'int': 2718} |
| `chromeGpuPssKb` | {'int': 2718} |
| `chromeOtherPssKb` | {'int': 2718} |
| `chromeProcesses` | {'int': 2718} |
| `chromeProfiles` | {'int': 2718} |
| `chromeRendererMaxPssKb` | {'int': 2718} |
| `chromeRendererPssKb` | {'int': 2718} |
| `chromeRenderers` | {'int': 2718} |
| `chromeTabs` | {'int': 2718} |
| `chromeTabsProbedProfiles` | {'int': 2718} |
| `chromeUtilityPssKb` | {'int': 2718} |
| `desktopPssKb` | {'int': 2718} |
| `hostPssKb` | {'int': 2718} |
| `kind` | {'str': 2718} |
| `memAvailableKb` | {'int': 2718} |
| `memTotalKb` | {'int': 2718} |
| `otherPssKb` | {'int': 2718} |
| `processes` | {'int': 2718} |
| `pssFallbackProcesses` | {'int': 2718} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
