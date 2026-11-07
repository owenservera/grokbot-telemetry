# sandbox_telemetry_parse — 2026-11-07 03:19:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=288410 lines=645
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 636 |
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
| `chromeBrowserPssKb` | {'int': 636} |
| `chromeGpuPssKb` | {'int': 636} |
| `chromeOtherPssKb` | {'int': 636} |
| `chromeProcesses` | {'int': 636} |
| `chromeProfiles` | {'int': 636} |
| `chromeRendererMaxPssKb` | {'int': 636} |
| `chromeRendererPssKb` | {'int': 636} |
| `chromeRenderers` | {'int': 636} |
| `chromeTabs` | {'int': 636} |
| `chromeTabsProbedProfiles` | {'int': 636} |
| `chromeUtilityPssKb` | {'int': 636} |
| `desktopPssKb` | {'int': 636} |
| `hostPssKb` | {'int': 636} |
| `kind` | {'str': 636} |
| `memAvailableKb` | {'int': 636} |
| `memTotalKb` | {'int': 636} |
| `otherPssKb` | {'int': 636} |
| `processes` | {'int': 636} |
| `pssFallbackProcesses` | {'int': 636} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
