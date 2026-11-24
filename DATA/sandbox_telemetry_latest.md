# sandbox_telemetry_parse — 2026-11-24 14:19:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2318622 lines=5139
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5124 |
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
| `chromeBrowserPssKb` | {'int': 5124} |
| `chromeGpuPssKb` | {'int': 5124} |
| `chromeOtherPssKb` | {'int': 5124} |
| `chromeProcesses` | {'int': 5124} |
| `chromeProfiles` | {'int': 5124} |
| `chromeRendererMaxPssKb` | {'int': 5124} |
| `chromeRendererPssKb` | {'int': 5124} |
| `chromeRenderers` | {'int': 5124} |
| `chromeTabs` | {'int': 5124} |
| `chromeTabsProbedProfiles` | {'int': 5124} |
| `chromeUtilityPssKb` | {'int': 5124} |
| `desktopPssKb` | {'int': 5124} |
| `hostPssKb` | {'int': 5124} |
| `kind` | {'str': 5124} |
| `memAvailableKb` | {'int': 5124} |
| `memTotalKb` | {'int': 5124} |
| `otherPssKb` | {'int': 5124} |
| `processes` | {'int': 5124} |
| `pssFallbackProcesses` | {'int': 5124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
