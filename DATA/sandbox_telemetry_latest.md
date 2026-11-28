# sandbox_telemetry_parse — 2026-11-28 09:43:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=829454 lines=1840
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1832 |
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
| `chromeBrowserPssKb` | {'int': 1832} |
| `chromeGpuPssKb` | {'int': 1832} |
| `chromeOtherPssKb` | {'int': 1832} |
| `chromeProcesses` | {'int': 1832} |
| `chromeProfiles` | {'int': 1832} |
| `chromeRendererMaxPssKb` | {'int': 1832} |
| `chromeRendererPssKb` | {'int': 1832} |
| `chromeRenderers` | {'int': 1832} |
| `chromeTabs` | {'int': 1832} |
| `chromeTabsProbedProfiles` | {'int': 1832} |
| `chromeUtilityPssKb` | {'int': 1832} |
| `desktopPssKb` | {'int': 1832} |
| `hostPssKb` | {'int': 1832} |
| `kind` | {'str': 1832} |
| `memAvailableKb` | {'int': 1832} |
| `memTotalKb` | {'int': 1832} |
| `otherPssKb` | {'int': 1832} |
| `processes` | {'int': 1832} |
| `pssFallbackProcesses` | {'int': 1832} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
