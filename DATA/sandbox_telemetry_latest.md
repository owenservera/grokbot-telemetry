# sandbox_telemetry_parse — 2026-11-09 14:48:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=705458 lines=1567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1558 |
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
| `chromeBrowserPssKb` | {'int': 1558} |
| `chromeGpuPssKb` | {'int': 1558} |
| `chromeOtherPssKb` | {'int': 1558} |
| `chromeProcesses` | {'int': 1558} |
| `chromeProfiles` | {'int': 1558} |
| `chromeRendererMaxPssKb` | {'int': 1558} |
| `chromeRendererPssKb` | {'int': 1558} |
| `chromeRenderers` | {'int': 1558} |
| `chromeTabs` | {'int': 1558} |
| `chromeTabsProbedProfiles` | {'int': 1558} |
| `chromeUtilityPssKb` | {'int': 1558} |
| `desktopPssKb` | {'int': 1558} |
| `hostPssKb` | {'int': 1558} |
| `kind` | {'str': 1558} |
| `memAvailableKb` | {'int': 1558} |
| `memTotalKb` | {'int': 1558} |
| `otherPssKb` | {'int': 1558} |
| `processes` | {'int': 1558} |
| `pssFallbackProcesses` | {'int': 1558} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
