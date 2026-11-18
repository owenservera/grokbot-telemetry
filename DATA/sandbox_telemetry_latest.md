# sandbox_telemetry_parse — 2026-11-18 19:06:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=939484 lines=2085
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2076 |
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
| `chromeBrowserPssKb` | {'int': 2076} |
| `chromeGpuPssKb` | {'int': 2076} |
| `chromeOtherPssKb` | {'int': 2076} |
| `chromeProcesses` | {'int': 2076} |
| `chromeProfiles` | {'int': 2076} |
| `chromeRendererMaxPssKb` | {'int': 2076} |
| `chromeRendererPssKb` | {'int': 2076} |
| `chromeRenderers` | {'int': 2076} |
| `chromeTabs` | {'int': 2076} |
| `chromeTabsProbedProfiles` | {'int': 2076} |
| `chromeUtilityPssKb` | {'int': 2076} |
| `desktopPssKb` | {'int': 2076} |
| `hostPssKb` | {'int': 2076} |
| `kind` | {'str': 2076} |
| `memAvailableKb` | {'int': 2076} |
| `memTotalKb` | {'int': 2076} |
| `otherPssKb` | {'int': 2076} |
| `processes` | {'int': 2076} |
| `pssFallbackProcesses` | {'int': 2076} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
