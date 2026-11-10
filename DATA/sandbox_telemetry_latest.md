# sandbox_telemetry_parse — 2026-11-10 13:44:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1163427 lines=2579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2570 |
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
| `chromeBrowserPssKb` | {'int': 2570} |
| `chromeGpuPssKb` | {'int': 2570} |
| `chromeOtherPssKb` | {'int': 2570} |
| `chromeProcesses` | {'int': 2570} |
| `chromeProfiles` | {'int': 2570} |
| `chromeRendererMaxPssKb` | {'int': 2570} |
| `chromeRendererPssKb` | {'int': 2570} |
| `chromeRenderers` | {'int': 2570} |
| `chromeTabs` | {'int': 2570} |
| `chromeTabsProbedProfiles` | {'int': 2570} |
| `chromeUtilityPssKb` | {'int': 2570} |
| `desktopPssKb` | {'int': 2570} |
| `hostPssKb` | {'int': 2570} |
| `kind` | {'str': 2570} |
| `memAvailableKb` | {'int': 2570} |
| `memTotalKb` | {'int': 2570} |
| `otherPssKb` | {'int': 2570} |
| `processes` | {'int': 2570} |
| `pssFallbackProcesses` | {'int': 2570} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
