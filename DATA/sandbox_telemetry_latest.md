# sandbox_telemetry_parse — 2026-11-10 14:21:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1178369 lines=2612
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2603 |
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
| `chromeBrowserPssKb` | {'int': 2603} |
| `chromeGpuPssKb` | {'int': 2603} |
| `chromeOtherPssKb` | {'int': 2603} |
| `chromeProcesses` | {'int': 2603} |
| `chromeProfiles` | {'int': 2603} |
| `chromeRendererMaxPssKb` | {'int': 2603} |
| `chromeRendererPssKb` | {'int': 2603} |
| `chromeRenderers` | {'int': 2603} |
| `chromeTabs` | {'int': 2603} |
| `chromeTabsProbedProfiles` | {'int': 2603} |
| `chromeUtilityPssKb` | {'int': 2603} |
| `desktopPssKb` | {'int': 2603} |
| `hostPssKb` | {'int': 2603} |
| `kind` | {'str': 2603} |
| `memAvailableKb` | {'int': 2603} |
| `memTotalKb` | {'int': 2603} |
| `otherPssKb` | {'int': 2603} |
| `processes` | {'int': 2603} |
| `pssFallbackProcesses` | {'int': 2603} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
