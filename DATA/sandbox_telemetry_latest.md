# sandbox_telemetry_parse — 2026-11-26 16:35:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3333401 lines=7384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7367 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7367} |
| `chromeGpuPssKb` | {'int': 7367} |
| `chromeOtherPssKb` | {'int': 7367} |
| `chromeProcesses` | {'int': 7367} |
| `chromeProfiles` | {'int': 7367} |
| `chromeRendererMaxPssKb` | {'int': 7367} |
| `chromeRendererPssKb` | {'int': 7367} |
| `chromeRenderers` | {'int': 7367} |
| `chromeTabs` | {'int': 7367} |
| `chromeTabsProbedProfiles` | {'int': 7367} |
| `chromeUtilityPssKb` | {'int': 7367} |
| `desktopPssKb` | {'int': 7367} |
| `hostPssKb` | {'int': 7367} |
| `kind` | {'str': 7367} |
| `memAvailableKb` | {'int': 7367} |
| `memTotalKb` | {'int': 7367} |
| `otherPssKb` | {'int': 7367} |
| `processes` | {'int': 7367} |
| `pssFallbackProcesses` | {'int': 7367} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
