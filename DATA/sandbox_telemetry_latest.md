# sandbox_telemetry_parse — 2026-11-24 10:16:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2240840 lines=4967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4952 |
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
| `chromeBrowserPssKb` | {'int': 4952} |
| `chromeGpuPssKb` | {'int': 4952} |
| `chromeOtherPssKb` | {'int': 4952} |
| `chromeProcesses` | {'int': 4952} |
| `chromeProfiles` | {'int': 4952} |
| `chromeRendererMaxPssKb` | {'int': 4952} |
| `chromeRendererPssKb` | {'int': 4952} |
| `chromeRenderers` | {'int': 4952} |
| `chromeTabs` | {'int': 4952} |
| `chromeTabsProbedProfiles` | {'int': 4952} |
| `chromeUtilityPssKb` | {'int': 4952} |
| `desktopPssKb` | {'int': 4952} |
| `hostPssKb` | {'int': 4952} |
| `kind` | {'str': 4952} |
| `memAvailableKb` | {'int': 4952} |
| `memTotalKb` | {'int': 4952} |
| `otherPssKb` | {'int': 4952} |
| `processes` | {'int': 4952} |
| `pssFallbackProcesses` | {'int': 4952} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
