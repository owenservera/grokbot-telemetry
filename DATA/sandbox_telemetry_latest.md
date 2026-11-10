# sandbox_telemetry_parse — 2026-11-10 20:36:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1308752 lines=2900
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2891 |
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
| `chromeBrowserPssKb` | {'int': 2891} |
| `chromeGpuPssKb` | {'int': 2891} |
| `chromeOtherPssKb` | {'int': 2891} |
| `chromeProcesses` | {'int': 2891} |
| `chromeProfiles` | {'int': 2891} |
| `chromeRendererMaxPssKb` | {'int': 2891} |
| `chromeRendererPssKb` | {'int': 2891} |
| `chromeRenderers` | {'int': 2891} |
| `chromeTabs` | {'int': 2891} |
| `chromeTabsProbedProfiles` | {'int': 2891} |
| `chromeUtilityPssKb` | {'int': 2891} |
| `desktopPssKb` | {'int': 2891} |
| `hostPssKb` | {'int': 2891} |
| `kind` | {'str': 2891} |
| `memAvailableKb` | {'int': 2891} |
| `memTotalKb` | {'int': 2891} |
| `otherPssKb` | {'int': 2891} |
| `processes` | {'int': 2891} |
| `pssFallbackProcesses` | {'int': 2891} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
