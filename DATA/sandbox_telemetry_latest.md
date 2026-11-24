# sandbox_telemetry_parse — 2026-11-24 20:01:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2428659 lines=5382
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5367 |
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
| `chromeBrowserPssKb` | {'int': 5367} |
| `chromeGpuPssKb` | {'int': 5367} |
| `chromeOtherPssKb` | {'int': 5367} |
| `chromeProcesses` | {'int': 5367} |
| `chromeProfiles` | {'int': 5367} |
| `chromeRendererMaxPssKb` | {'int': 5367} |
| `chromeRendererPssKb` | {'int': 5367} |
| `chromeRenderers` | {'int': 5367} |
| `chromeTabs` | {'int': 5367} |
| `chromeTabsProbedProfiles` | {'int': 5367} |
| `chromeUtilityPssKb` | {'int': 5367} |
| `desktopPssKb` | {'int': 5367} |
| `hostPssKb` | {'int': 5367} |
| `kind` | {'str': 5367} |
| `memAvailableKb` | {'int': 5367} |
| `memTotalKb` | {'int': 5367} |
| `otherPssKb` | {'int': 5367} |
| `processes` | {'int': 5367} |
| `pssFallbackProcesses` | {'int': 5367} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
