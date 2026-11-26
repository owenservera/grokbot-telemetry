# sandbox_telemetry_parse — 2026-11-26 15:27:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3311070 lines=7333
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7318 |
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
| `chromeBrowserPssKb` | {'int': 7318} |
| `chromeGpuPssKb` | {'int': 7318} |
| `chromeOtherPssKb` | {'int': 7318} |
| `chromeProcesses` | {'int': 7318} |
| `chromeProfiles` | {'int': 7318} |
| `chromeRendererMaxPssKb` | {'int': 7318} |
| `chromeRendererPssKb` | {'int': 7318} |
| `chromeRenderers` | {'int': 7318} |
| `chromeTabs` | {'int': 7318} |
| `chromeTabsProbedProfiles` | {'int': 7318} |
| `chromeUtilityPssKb` | {'int': 7318} |
| `desktopPssKb` | {'int': 7318} |
| `hostPssKb` | {'int': 7318} |
| `kind` | {'str': 7318} |
| `memAvailableKb` | {'int': 7318} |
| `memTotalKb` | {'int': 7318} |
| `otherPssKb` | {'int': 7318} |
| `processes` | {'int': 7318} |
| `pssFallbackProcesses` | {'int': 7318} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
