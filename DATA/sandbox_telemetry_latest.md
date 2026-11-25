# sandbox_telemetry_parse — 2026-11-25 02:19:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2550312 lines=5651
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5636 |
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
| `chromeBrowserPssKb` | {'int': 5636} |
| `chromeGpuPssKb` | {'int': 5636} |
| `chromeOtherPssKb` | {'int': 5636} |
| `chromeProcesses` | {'int': 5636} |
| `chromeProfiles` | {'int': 5636} |
| `chromeRendererMaxPssKb` | {'int': 5636} |
| `chromeRendererPssKb` | {'int': 5636} |
| `chromeRenderers` | {'int': 5636} |
| `chromeTabs` | {'int': 5636} |
| `chromeTabsProbedProfiles` | {'int': 5636} |
| `chromeUtilityPssKb` | {'int': 5636} |
| `desktopPssKb` | {'int': 5636} |
| `hostPssKb` | {'int': 5636} |
| `kind` | {'str': 5636} |
| `memAvailableKb` | {'int': 5636} |
| `memTotalKb` | {'int': 5636} |
| `otherPssKb` | {'int': 5636} |
| `processes` | {'int': 5636} |
| `pssFallbackProcesses` | {'int': 5636} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
