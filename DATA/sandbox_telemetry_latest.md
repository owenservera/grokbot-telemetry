# sandbox_telemetry_parse — 2026-11-09 18:18:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=784272 lines=1741
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1732 |
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
| `chromeBrowserPssKb` | {'int': 1732} |
| `chromeGpuPssKb` | {'int': 1732} |
| `chromeOtherPssKb` | {'int': 1732} |
| `chromeProcesses` | {'int': 1732} |
| `chromeProfiles` | {'int': 1732} |
| `chromeRendererMaxPssKb` | {'int': 1732} |
| `chromeRendererPssKb` | {'int': 1732} |
| `chromeRenderers` | {'int': 1732} |
| `chromeTabs` | {'int': 1732} |
| `chromeTabsProbedProfiles` | {'int': 1732} |
| `chromeUtilityPssKb` | {'int': 1732} |
| `desktopPssKb` | {'int': 1732} |
| `hostPssKb` | {'int': 1732} |
| `kind` | {'str': 1732} |
| `memAvailableKb` | {'int': 1732} |
| `memTotalKb` | {'int': 1732} |
| `otherPssKb` | {'int': 1732} |
| `processes` | {'int': 1732} |
| `pssFallbackProcesses` | {'int': 1732} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
