# sandbox_telemetry_parse — 2026-11-26 03:53:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3059070 lines=6776
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6761 |
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
| `chromeBrowserPssKb` | {'int': 6761} |
| `chromeGpuPssKb` | {'int': 6761} |
| `chromeOtherPssKb` | {'int': 6761} |
| `chromeProcesses` | {'int': 6761} |
| `chromeProfiles` | {'int': 6761} |
| `chromeRendererMaxPssKb` | {'int': 6761} |
| `chromeRendererPssKb` | {'int': 6761} |
| `chromeRenderers` | {'int': 6761} |
| `chromeTabs` | {'int': 6761} |
| `chromeTabsProbedProfiles` | {'int': 6761} |
| `chromeUtilityPssKb` | {'int': 6761} |
| `desktopPssKb` | {'int': 6761} |
| `hostPssKb` | {'int': 6761} |
| `kind` | {'str': 6761} |
| `memAvailableKb` | {'int': 6761} |
| `memTotalKb` | {'int': 6761} |
| `otherPssKb` | {'int': 6761} |
| `processes` | {'int': 6761} |
| `pssFallbackProcesses` | {'int': 6761} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
