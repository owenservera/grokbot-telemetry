# sandbox_telemetry_parse — 2026-11-25 05:06:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2603667 lines=5769
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5754 |
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
| `chromeBrowserPssKb` | {'int': 5754} |
| `chromeGpuPssKb` | {'int': 5754} |
| `chromeOtherPssKb` | {'int': 5754} |
| `chromeProcesses` | {'int': 5754} |
| `chromeProfiles` | {'int': 5754} |
| `chromeRendererMaxPssKb` | {'int': 5754} |
| `chromeRendererPssKb` | {'int': 5754} |
| `chromeRenderers` | {'int': 5754} |
| `chromeTabs` | {'int': 5754} |
| `chromeTabsProbedProfiles` | {'int': 5754} |
| `chromeUtilityPssKb` | {'int': 5754} |
| `desktopPssKb` | {'int': 5754} |
| `hostPssKb` | {'int': 5754} |
| `kind` | {'str': 5754} |
| `memAvailableKb` | {'int': 5754} |
| `memTotalKb` | {'int': 5754} |
| `otherPssKb` | {'int': 5754} |
| `processes` | {'int': 5754} |
| `pssFallbackProcesses` | {'int': 5754} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
