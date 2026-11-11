# sandbox_telemetry_parse — 2026-11-11 12:55:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1639906 lines=3632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3623 |
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
| `chromeBrowserPssKb` | {'int': 3623} |
| `chromeGpuPssKb` | {'int': 3623} |
| `chromeOtherPssKb` | {'int': 3623} |
| `chromeProcesses` | {'int': 3623} |
| `chromeProfiles` | {'int': 3623} |
| `chromeRendererMaxPssKb` | {'int': 3623} |
| `chromeRendererPssKb` | {'int': 3623} |
| `chromeRenderers` | {'int': 3623} |
| `chromeTabs` | {'int': 3623} |
| `chromeTabsProbedProfiles` | {'int': 3623} |
| `chromeUtilityPssKb` | {'int': 3623} |
| `desktopPssKb` | {'int': 3623} |
| `hostPssKb` | {'int': 3623} |
| `kind` | {'str': 3623} |
| `memAvailableKb` | {'int': 3623} |
| `memTotalKb` | {'int': 3623} |
| `otherPssKb` | {'int': 3623} |
| `processes` | {'int': 3623} |
| `pssFallbackProcesses` | {'int': 3623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
