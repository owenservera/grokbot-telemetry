# sandbox_telemetry_parse — 2026-11-24 20:23:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2434540 lines=5395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5380 |
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
| `chromeBrowserPssKb` | {'int': 5380} |
| `chromeGpuPssKb` | {'int': 5380} |
| `chromeOtherPssKb` | {'int': 5380} |
| `chromeProcesses` | {'int': 5380} |
| `chromeProfiles` | {'int': 5380} |
| `chromeRendererMaxPssKb` | {'int': 5380} |
| `chromeRendererPssKb` | {'int': 5380} |
| `chromeRenderers` | {'int': 5380} |
| `chromeTabs` | {'int': 5380} |
| `chromeTabsProbedProfiles` | {'int': 5380} |
| `chromeUtilityPssKb` | {'int': 5380} |
| `desktopPssKb` | {'int': 5380} |
| `hostPssKb` | {'int': 5380} |
| `kind` | {'str': 5380} |
| `memAvailableKb` | {'int': 5380} |
| `memTotalKb` | {'int': 5380} |
| `otherPssKb` | {'int': 5380} |
| `processes` | {'int': 5380} |
| `pssFallbackProcesses` | {'int': 5380} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
