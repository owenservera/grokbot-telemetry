# sandbox_telemetry_parse — 2026-11-11 07:56:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1532199 lines=3394
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3385 |
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
| `chromeBrowserPssKb` | {'int': 3385} |
| `chromeGpuPssKb` | {'int': 3385} |
| `chromeOtherPssKb` | {'int': 3385} |
| `chromeProcesses` | {'int': 3385} |
| `chromeProfiles` | {'int': 3385} |
| `chromeRendererMaxPssKb` | {'int': 3385} |
| `chromeRendererPssKb` | {'int': 3385} |
| `chromeRenderers` | {'int': 3385} |
| `chromeTabs` | {'int': 3385} |
| `chromeTabsProbedProfiles` | {'int': 3385} |
| `chromeUtilityPssKb` | {'int': 3385} |
| `desktopPssKb` | {'int': 3385} |
| `hostPssKb` | {'int': 3385} |
| `kind` | {'str': 3385} |
| `memAvailableKb` | {'int': 3385} |
| `memTotalKb` | {'int': 3385} |
| `otherPssKb` | {'int': 3385} |
| `processes` | {'int': 3385} |
| `pssFallbackProcesses` | {'int': 3385} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
