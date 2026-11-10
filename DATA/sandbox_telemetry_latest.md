# sandbox_telemetry_parse — 2026-11-10 15:10:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1193746 lines=2646
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2637 |
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
| `chromeBrowserPssKb` | {'int': 2637} |
| `chromeGpuPssKb` | {'int': 2637} |
| `chromeOtherPssKb` | {'int': 2637} |
| `chromeProcesses` | {'int': 2637} |
| `chromeProfiles` | {'int': 2637} |
| `chromeRendererMaxPssKb` | {'int': 2637} |
| `chromeRendererPssKb` | {'int': 2637} |
| `chromeRenderers` | {'int': 2637} |
| `chromeTabs` | {'int': 2637} |
| `chromeTabsProbedProfiles` | {'int': 2637} |
| `chromeUtilityPssKb` | {'int': 2637} |
| `desktopPssKb` | {'int': 2637} |
| `hostPssKb` | {'int': 2637} |
| `kind` | {'str': 2637} |
| `memAvailableKb` | {'int': 2637} |
| `memTotalKb` | {'int': 2637} |
| `otherPssKb` | {'int': 2637} |
| `processes` | {'int': 2637} |
| `pssFallbackProcesses` | {'int': 2637} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
