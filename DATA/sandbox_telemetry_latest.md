# sandbox_telemetry_parse — 2026-11-24 19:58:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2427300 lines=5379
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5364 |
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
| `chromeBrowserPssKb` | {'int': 5364} |
| `chromeGpuPssKb` | {'int': 5364} |
| `chromeOtherPssKb` | {'int': 5364} |
| `chromeProcesses` | {'int': 5364} |
| `chromeProfiles` | {'int': 5364} |
| `chromeRendererMaxPssKb` | {'int': 5364} |
| `chromeRendererPssKb` | {'int': 5364} |
| `chromeRenderers` | {'int': 5364} |
| `chromeTabs` | {'int': 5364} |
| `chromeTabsProbedProfiles` | {'int': 5364} |
| `chromeUtilityPssKb` | {'int': 5364} |
| `desktopPssKb` | {'int': 5364} |
| `hostPssKb` | {'int': 5364} |
| `kind` | {'str': 5364} |
| `memAvailableKb` | {'int': 5364} |
| `memTotalKb` | {'int': 5364} |
| `otherPssKb` | {'int': 5364} |
| `processes` | {'int': 5364} |
| `pssFallbackProcesses` | {'int': 5364} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
