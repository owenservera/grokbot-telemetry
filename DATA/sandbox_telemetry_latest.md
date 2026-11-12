# sandbox_telemetry_parse — 2026-11-12 10:53:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2093803 lines=4635
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4626 |
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
| `chromeBrowserPssKb` | {'int': 4626} |
| `chromeGpuPssKb` | {'int': 4626} |
| `chromeOtherPssKb` | {'int': 4626} |
| `chromeProcesses` | {'int': 4626} |
| `chromeProfiles` | {'int': 4626} |
| `chromeRendererMaxPssKb` | {'int': 4626} |
| `chromeRendererPssKb` | {'int': 4626} |
| `chromeRenderers` | {'int': 4626} |
| `chromeTabs` | {'int': 4626} |
| `chromeTabsProbedProfiles` | {'int': 4626} |
| `chromeUtilityPssKb` | {'int': 4626} |
| `desktopPssKb` | {'int': 4626} |
| `hostPssKb` | {'int': 4626} |
| `kind` | {'str': 4626} |
| `memAvailableKb` | {'int': 4626} |
| `memTotalKb` | {'int': 4626} |
| `otherPssKb` | {'int': 4626} |
| `processes` | {'int': 4626} |
| `pssFallbackProcesses` | {'int': 4626} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
