# sandbox_telemetry_parse — 2026-11-12 21:47:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2340592 lines=5180
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5171 |
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
| `chromeBrowserPssKb` | {'int': 5171} |
| `chromeGpuPssKb` | {'int': 5171} |
| `chromeOtherPssKb` | {'int': 5171} |
| `chromeProcesses` | {'int': 5171} |
| `chromeProfiles` | {'int': 5171} |
| `chromeRendererMaxPssKb` | {'int': 5171} |
| `chromeRendererPssKb` | {'int': 5171} |
| `chromeRenderers` | {'int': 5171} |
| `chromeTabs` | {'int': 5171} |
| `chromeTabsProbedProfiles` | {'int': 5171} |
| `chromeUtilityPssKb` | {'int': 5171} |
| `desktopPssKb` | {'int': 5171} |
| `hostPssKb` | {'int': 5171} |
| `kind` | {'str': 5171} |
| `memAvailableKb` | {'int': 5171} |
| `memTotalKb` | {'int': 5171} |
| `otherPssKb` | {'int': 5171} |
| `processes` | {'int': 5171} |
| `pssFallbackProcesses` | {'int': 5171} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
