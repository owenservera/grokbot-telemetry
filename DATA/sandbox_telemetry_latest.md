# sandbox_telemetry_parse — 2026-11-20 00:05:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1501449 lines=3329
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3318 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3318} |
| `chromeGpuPssKb` | {'int': 3318} |
| `chromeOtherPssKb` | {'int': 3318} |
| `chromeProcesses` | {'int': 3318} |
| `chromeProfiles` | {'int': 3318} |
| `chromeRendererMaxPssKb` | {'int': 3318} |
| `chromeRendererPssKb` | {'int': 3318} |
| `chromeRenderers` | {'int': 3318} |
| `chromeTabs` | {'int': 3318} |
| `chromeTabsProbedProfiles` | {'int': 3318} |
| `chromeUtilityPssKb` | {'int': 3318} |
| `desktopPssKb` | {'int': 3318} |
| `hostPssKb` | {'int': 3318} |
| `kind` | {'str': 3318} |
| `memAvailableKb` | {'int': 3318} |
| `memTotalKb` | {'int': 3318} |
| `otherPssKb` | {'int': 3318} |
| `processes` | {'int': 3318} |
| `pssFallbackProcesses` | {'int': 3318} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
