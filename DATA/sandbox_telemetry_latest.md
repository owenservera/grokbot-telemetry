# sandbox_telemetry_parse — 2026-11-26 00:22:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2992589 lines=6629
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6614 |
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
| `chromeBrowserPssKb` | {'int': 6614} |
| `chromeGpuPssKb` | {'int': 6614} |
| `chromeOtherPssKb` | {'int': 6614} |
| `chromeProcesses` | {'int': 6614} |
| `chromeProfiles` | {'int': 6614} |
| `chromeRendererMaxPssKb` | {'int': 6614} |
| `chromeRendererPssKb` | {'int': 6614} |
| `chromeRenderers` | {'int': 6614} |
| `chromeTabs` | {'int': 6614} |
| `chromeTabsProbedProfiles` | {'int': 6614} |
| `chromeUtilityPssKb` | {'int': 6614} |
| `desktopPssKb` | {'int': 6614} |
| `hostPssKb` | {'int': 6614} |
| `kind` | {'str': 6614} |
| `memAvailableKb` | {'int': 6614} |
| `memTotalKb` | {'int': 6614} |
| `otherPssKb` | {'int': 6614} |
| `processes` | {'int': 6614} |
| `pssFallbackProcesses` | {'int': 6614} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
