# sandbox_telemetry_parse — 2026-11-10 14:59:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1188774 lines=2635
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2626 |
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
| `chromeBrowserPssKb` | {'int': 2626} |
| `chromeGpuPssKb` | {'int': 2626} |
| `chromeOtherPssKb` | {'int': 2626} |
| `chromeProcesses` | {'int': 2626} |
| `chromeProfiles` | {'int': 2626} |
| `chromeRendererMaxPssKb` | {'int': 2626} |
| `chromeRendererPssKb` | {'int': 2626} |
| `chromeRenderers` | {'int': 2626} |
| `chromeTabs` | {'int': 2626} |
| `chromeTabsProbedProfiles` | {'int': 2626} |
| `chromeUtilityPssKb` | {'int': 2626} |
| `desktopPssKb` | {'int': 2626} |
| `hostPssKb` | {'int': 2626} |
| `kind` | {'str': 2626} |
| `memAvailableKb` | {'int': 2626} |
| `memTotalKb` | {'int': 2626} |
| `otherPssKb` | {'int': 2626} |
| `processes` | {'int': 2626} |
| `pssFallbackProcesses` | {'int': 2626} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
