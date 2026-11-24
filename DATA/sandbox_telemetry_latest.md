# sandbox_telemetry_parse — 2026-11-24 23:38:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2500132 lines=5540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5525 |
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
| `chromeBrowserPssKb` | {'int': 5525} |
| `chromeGpuPssKb` | {'int': 5525} |
| `chromeOtherPssKb` | {'int': 5525} |
| `chromeProcesses` | {'int': 5525} |
| `chromeProfiles` | {'int': 5525} |
| `chromeRendererMaxPssKb` | {'int': 5525} |
| `chromeRendererPssKb` | {'int': 5525} |
| `chromeRenderers` | {'int': 5525} |
| `chromeTabs` | {'int': 5525} |
| `chromeTabsProbedProfiles` | {'int': 5525} |
| `chromeUtilityPssKb` | {'int': 5525} |
| `desktopPssKb` | {'int': 5525} |
| `hostPssKb` | {'int': 5525} |
| `kind` | {'str': 5525} |
| `memAvailableKb` | {'int': 5525} |
| `memTotalKb` | {'int': 5525} |
| `otherPssKb` | {'int': 5525} |
| `processes` | {'int': 5525} |
| `pssFallbackProcesses` | {'int': 5525} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
