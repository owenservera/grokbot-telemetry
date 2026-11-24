# sandbox_telemetry_parse — 2026-11-24 03:22:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2107895 lines=4673
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4658 |
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
| `chromeBrowserPssKb` | {'int': 4658} |
| `chromeGpuPssKb` | {'int': 4658} |
| `chromeOtherPssKb` | {'int': 4658} |
| `chromeProcesses` | {'int': 4658} |
| `chromeProfiles` | {'int': 4658} |
| `chromeRendererMaxPssKb` | {'int': 4658} |
| `chromeRendererPssKb` | {'int': 4658} |
| `chromeRenderers` | {'int': 4658} |
| `chromeTabs` | {'int': 4658} |
| `chromeTabsProbedProfiles` | {'int': 4658} |
| `chromeUtilityPssKb` | {'int': 4658} |
| `desktopPssKb` | {'int': 4658} |
| `hostPssKb` | {'int': 4658} |
| `kind` | {'str': 4658} |
| `memAvailableKb` | {'int': 4658} |
| `memTotalKb` | {'int': 4658} |
| `otherPssKb` | {'int': 4658} |
| `processes` | {'int': 4658} |
| `pssFallbackProcesses` | {'int': 4658} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
