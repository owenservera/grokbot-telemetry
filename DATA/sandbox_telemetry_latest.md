# sandbox_telemetry_parse — 2026-11-26 01:16:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3008413 lines=6664
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6649 |
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
| `chromeBrowserPssKb` | {'int': 6649} |
| `chromeGpuPssKb` | {'int': 6649} |
| `chromeOtherPssKb` | {'int': 6649} |
| `chromeProcesses` | {'int': 6649} |
| `chromeProfiles` | {'int': 6649} |
| `chromeRendererMaxPssKb` | {'int': 6649} |
| `chromeRendererPssKb` | {'int': 6649} |
| `chromeRenderers` | {'int': 6649} |
| `chromeTabs` | {'int': 6649} |
| `chromeTabsProbedProfiles` | {'int': 6649} |
| `chromeUtilityPssKb` | {'int': 6649} |
| `desktopPssKb` | {'int': 6649} |
| `hostPssKb` | {'int': 6649} |
| `kind` | {'str': 6649} |
| `memAvailableKb` | {'int': 6649} |
| `memTotalKb` | {'int': 6649} |
| `otherPssKb` | {'int': 6649} |
| `processes` | {'int': 6649} |
| `pssFallbackProcesses` | {'int': 6649} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
