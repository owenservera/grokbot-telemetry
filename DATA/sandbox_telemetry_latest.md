# sandbox_telemetry_parse — 2026-11-19 06:32:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1154296 lines=2560
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2551 |
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
| `chromeBrowserPssKb` | {'int': 2551} |
| `chromeGpuPssKb` | {'int': 2551} |
| `chromeOtherPssKb` | {'int': 2551} |
| `chromeProcesses` | {'int': 2551} |
| `chromeProfiles` | {'int': 2551} |
| `chromeRendererMaxPssKb` | {'int': 2551} |
| `chromeRendererPssKb` | {'int': 2551} |
| `chromeRenderers` | {'int': 2551} |
| `chromeTabs` | {'int': 2551} |
| `chromeTabsProbedProfiles` | {'int': 2551} |
| `chromeUtilityPssKb` | {'int': 2551} |
| `desktopPssKb` | {'int': 2551} |
| `hostPssKb` | {'int': 2551} |
| `kind` | {'str': 2551} |
| `memAvailableKb` | {'int': 2551} |
| `memTotalKb` | {'int': 2551} |
| `otherPssKb` | {'int': 2551} |
| `processes` | {'int': 2551} |
| `pssFallbackProcesses` | {'int': 2551} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
