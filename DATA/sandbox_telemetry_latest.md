# sandbox_telemetry_parse — 2026-11-23 23:47:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2041430 lines=4526
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4511 |
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
| `chromeBrowserPssKb` | {'int': 4511} |
| `chromeGpuPssKb` | {'int': 4511} |
| `chromeOtherPssKb` | {'int': 4511} |
| `chromeProcesses` | {'int': 4511} |
| `chromeProfiles` | {'int': 4511} |
| `chromeRendererMaxPssKb` | {'int': 4511} |
| `chromeRendererPssKb` | {'int': 4511} |
| `chromeRenderers` | {'int': 4511} |
| `chromeTabs` | {'int': 4511} |
| `chromeTabsProbedProfiles` | {'int': 4511} |
| `chromeUtilityPssKb` | {'int': 4511} |
| `desktopPssKb` | {'int': 4511} |
| `hostPssKb` | {'int': 4511} |
| `kind` | {'str': 4511} |
| `memAvailableKb` | {'int': 4511} |
| `memTotalKb` | {'int': 4511} |
| `otherPssKb` | {'int': 4511} |
| `processes` | {'int': 4511} |
| `pssFallbackProcesses` | {'int': 4511} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
