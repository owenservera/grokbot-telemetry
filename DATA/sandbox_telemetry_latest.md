# sandbox_telemetry_parse — 2026-11-24 01:50:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2080316 lines=4612
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4597 |
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
| `chromeBrowserPssKb` | {'int': 4597} |
| `chromeGpuPssKb` | {'int': 4597} |
| `chromeOtherPssKb` | {'int': 4597} |
| `chromeProcesses` | {'int': 4597} |
| `chromeProfiles` | {'int': 4597} |
| `chromeRendererMaxPssKb` | {'int': 4597} |
| `chromeRendererPssKb` | {'int': 4597} |
| `chromeRenderers` | {'int': 4597} |
| `chromeTabs` | {'int': 4597} |
| `chromeTabsProbedProfiles` | {'int': 4597} |
| `chromeUtilityPssKb` | {'int': 4597} |
| `desktopPssKb` | {'int': 4597} |
| `hostPssKb` | {'int': 4597} |
| `kind` | {'str': 4597} |
| `memAvailableKb` | {'int': 4597} |
| `memTotalKb` | {'int': 4597} |
| `otherPssKb` | {'int': 4597} |
| `processes` | {'int': 4597} |
| `pssFallbackProcesses` | {'int': 4597} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
