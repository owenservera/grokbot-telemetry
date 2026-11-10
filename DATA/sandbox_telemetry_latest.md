# sandbox_telemetry_parse — 2026-11-10 17:16:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1236769 lines=2741
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2732 |
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
| `chromeBrowserPssKb` | {'int': 2732} |
| `chromeGpuPssKb` | {'int': 2732} |
| `chromeOtherPssKb` | {'int': 2732} |
| `chromeProcesses` | {'int': 2732} |
| `chromeProfiles` | {'int': 2732} |
| `chromeRendererMaxPssKb` | {'int': 2732} |
| `chromeRendererPssKb` | {'int': 2732} |
| `chromeRenderers` | {'int': 2732} |
| `chromeTabs` | {'int': 2732} |
| `chromeTabsProbedProfiles` | {'int': 2732} |
| `chromeUtilityPssKb` | {'int': 2732} |
| `desktopPssKb` | {'int': 2732} |
| `hostPssKb` | {'int': 2732} |
| `kind` | {'str': 2732} |
| `memAvailableKb` | {'int': 2732} |
| `memTotalKb` | {'int': 2732} |
| `otherPssKb` | {'int': 2732} |
| `processes` | {'int': 2732} |
| `pssFallbackProcesses` | {'int': 2732} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
