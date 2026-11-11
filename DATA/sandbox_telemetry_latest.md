# sandbox_telemetry_parse — 2026-11-11 09:27:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1562498 lines=3461
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3452 |
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
| `chromeBrowserPssKb` | {'int': 3452} |
| `chromeGpuPssKb` | {'int': 3452} |
| `chromeOtherPssKb` | {'int': 3452} |
| `chromeProcesses` | {'int': 3452} |
| `chromeProfiles` | {'int': 3452} |
| `chromeRendererMaxPssKb` | {'int': 3452} |
| `chromeRendererPssKb` | {'int': 3452} |
| `chromeRenderers` | {'int': 3452} |
| `chromeTabs` | {'int': 3452} |
| `chromeTabsProbedProfiles` | {'int': 3452} |
| `chromeUtilityPssKb` | {'int': 3452} |
| `desktopPssKb` | {'int': 3452} |
| `hostPssKb` | {'int': 3452} |
| `kind` | {'str': 3452} |
| `memAvailableKb` | {'int': 3452} |
| `memTotalKb` | {'int': 3452} |
| `otherPssKb` | {'int': 3452} |
| `processes` | {'int': 3452} |
| `pssFallbackProcesses` | {'int': 3452} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
