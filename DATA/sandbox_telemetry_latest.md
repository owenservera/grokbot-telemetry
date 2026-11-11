# sandbox_telemetry_parse — 2026-11-11 11:29:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1607309 lines=3560
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3551 |
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
| `chromeBrowserPssKb` | {'int': 3551} |
| `chromeGpuPssKb` | {'int': 3551} |
| `chromeOtherPssKb` | {'int': 3551} |
| `chromeProcesses` | {'int': 3551} |
| `chromeProfiles` | {'int': 3551} |
| `chromeRendererMaxPssKb` | {'int': 3551} |
| `chromeRendererPssKb` | {'int': 3551} |
| `chromeRenderers` | {'int': 3551} |
| `chromeTabs` | {'int': 3551} |
| `chromeTabsProbedProfiles` | {'int': 3551} |
| `chromeUtilityPssKb` | {'int': 3551} |
| `desktopPssKb` | {'int': 3551} |
| `hostPssKb` | {'int': 3551} |
| `kind` | {'str': 3551} |
| `memAvailableKb` | {'int': 3551} |
| `memTotalKb` | {'int': 3551} |
| `otherPssKb` | {'int': 3551} |
| `processes` | {'int': 3551} |
| `pssFallbackProcesses` | {'int': 3551} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
