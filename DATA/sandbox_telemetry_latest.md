# sandbox_telemetry_parse — 2026-11-12 10:49:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2092447 lines=4632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4623 |
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
| `chromeBrowserPssKb` | {'int': 4623} |
| `chromeGpuPssKb` | {'int': 4623} |
| `chromeOtherPssKb` | {'int': 4623} |
| `chromeProcesses` | {'int': 4623} |
| `chromeProfiles` | {'int': 4623} |
| `chromeRendererMaxPssKb` | {'int': 4623} |
| `chromeRendererPssKb` | {'int': 4623} |
| `chromeRenderers` | {'int': 4623} |
| `chromeTabs` | {'int': 4623} |
| `chromeTabsProbedProfiles` | {'int': 4623} |
| `chromeUtilityPssKb` | {'int': 4623} |
| `desktopPssKb` | {'int': 4623} |
| `hostPssKb` | {'int': 4623} |
| `kind` | {'str': 4623} |
| `memAvailableKb` | {'int': 4623} |
| `memTotalKb` | {'int': 4623} |
| `otherPssKb` | {'int': 4623} |
| `processes` | {'int': 4623} |
| `pssFallbackProcesses` | {'int': 4623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
