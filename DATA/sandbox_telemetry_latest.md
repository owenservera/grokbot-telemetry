# sandbox_telemetry_parse — 2026-11-25 23:05:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2964081 lines=6566
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6551 |
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
| `chromeBrowserPssKb` | {'int': 6551} |
| `chromeGpuPssKb` | {'int': 6551} |
| `chromeOtherPssKb` | {'int': 6551} |
| `chromeProcesses` | {'int': 6551} |
| `chromeProfiles` | {'int': 6551} |
| `chromeRendererMaxPssKb` | {'int': 6551} |
| `chromeRendererPssKb` | {'int': 6551} |
| `chromeRenderers` | {'int': 6551} |
| `chromeTabs` | {'int': 6551} |
| `chromeTabsProbedProfiles` | {'int': 6551} |
| `chromeUtilityPssKb` | {'int': 6551} |
| `desktopPssKb` | {'int': 6551} |
| `hostPssKb` | {'int': 6551} |
| `kind` | {'str': 6551} |
| `memAvailableKb` | {'int': 6551} |
| `memTotalKb` | {'int': 6551} |
| `otherPssKb` | {'int': 6551} |
| `processes` | {'int': 6551} |
| `pssFallbackProcesses` | {'int': 6551} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
