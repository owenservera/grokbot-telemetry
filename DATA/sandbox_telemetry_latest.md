# sandbox_telemetry_parse — 2026-11-11 22:54:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1858503 lines=4115
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4106 |
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
| `chromeBrowserPssKb` | {'int': 4106} |
| `chromeGpuPssKb` | {'int': 4106} |
| `chromeOtherPssKb` | {'int': 4106} |
| `chromeProcesses` | {'int': 4106} |
| `chromeProfiles` | {'int': 4106} |
| `chromeRendererMaxPssKb` | {'int': 4106} |
| `chromeRendererPssKb` | {'int': 4106} |
| `chromeRenderers` | {'int': 4106} |
| `chromeTabs` | {'int': 4106} |
| `chromeTabsProbedProfiles` | {'int': 4106} |
| `chromeUtilityPssKb` | {'int': 4106} |
| `desktopPssKb` | {'int': 4106} |
| `hostPssKb` | {'int': 4106} |
| `kind` | {'str': 4106} |
| `memAvailableKb` | {'int': 4106} |
| `memTotalKb` | {'int': 4106} |
| `otherPssKb` | {'int': 4106} |
| `processes` | {'int': 4106} |
| `pssFallbackProcesses` | {'int': 4106} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
