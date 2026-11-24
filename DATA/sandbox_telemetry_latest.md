# sandbox_telemetry_parse — 2026-11-24 14:29:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2322698 lines=5148
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5133 |
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
| `chromeBrowserPssKb` | {'int': 5133} |
| `chromeGpuPssKb` | {'int': 5133} |
| `chromeOtherPssKb` | {'int': 5133} |
| `chromeProcesses` | {'int': 5133} |
| `chromeProfiles` | {'int': 5133} |
| `chromeRendererMaxPssKb` | {'int': 5133} |
| `chromeRendererPssKb` | {'int': 5133} |
| `chromeRenderers` | {'int': 5133} |
| `chromeTabs` | {'int': 5133} |
| `chromeTabsProbedProfiles` | {'int': 5133} |
| `chromeUtilityPssKb` | {'int': 5133} |
| `desktopPssKb` | {'int': 5133} |
| `hostPssKb` | {'int': 5133} |
| `kind` | {'str': 5133} |
| `memAvailableKb` | {'int': 5133} |
| `memTotalKb` | {'int': 5133} |
| `otherPssKb` | {'int': 5133} |
| `processes` | {'int': 5133} |
| `pssFallbackProcesses` | {'int': 5133} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
