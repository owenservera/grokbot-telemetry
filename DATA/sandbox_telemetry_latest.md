# sandbox_telemetry_parse — 2026-11-24 23:53:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2504653 lines=5550
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5535 |
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
| `chromeBrowserPssKb` | {'int': 5535} |
| `chromeGpuPssKb` | {'int': 5535} |
| `chromeOtherPssKb` | {'int': 5535} |
| `chromeProcesses` | {'int': 5535} |
| `chromeProfiles` | {'int': 5535} |
| `chromeRendererMaxPssKb` | {'int': 5535} |
| `chromeRendererPssKb` | {'int': 5535} |
| `chromeRenderers` | {'int': 5535} |
| `chromeTabs` | {'int': 5535} |
| `chromeTabsProbedProfiles` | {'int': 5535} |
| `chromeUtilityPssKb` | {'int': 5535} |
| `desktopPssKb` | {'int': 5535} |
| `hostPssKb` | {'int': 5535} |
| `kind` | {'str': 5535} |
| `memAvailableKb` | {'int': 5535} |
| `memTotalKb` | {'int': 5535} |
| `otherPssKb` | {'int': 5535} |
| `processes` | {'int': 5535} |
| `pssFallbackProcesses` | {'int': 5535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
