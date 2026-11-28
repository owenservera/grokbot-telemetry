# sandbox_telemetry_parse — 2026-11-28 21:56:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1075706 lines=2384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2376 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2376} |
| `chromeGpuPssKb` | {'int': 2376} |
| `chromeOtherPssKb` | {'int': 2376} |
| `chromeProcesses` | {'int': 2376} |
| `chromeProfiles` | {'int': 2376} |
| `chromeRendererMaxPssKb` | {'int': 2376} |
| `chromeRendererPssKb` | {'int': 2376} |
| `chromeRenderers` | {'int': 2376} |
| `chromeTabs` | {'int': 2376} |
| `chromeTabsProbedProfiles` | {'int': 2376} |
| `chromeUtilityPssKb` | {'int': 2376} |
| `desktopPssKb` | {'int': 2376} |
| `hostPssKb` | {'int': 2376} |
| `kind` | {'str': 2376} |
| `memAvailableKb` | {'int': 2376} |
| `memTotalKb` | {'int': 2376} |
| `otherPssKb` | {'int': 2376} |
| `processes` | {'int': 2376} |
| `pssFallbackProcesses` | {'int': 2376} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
