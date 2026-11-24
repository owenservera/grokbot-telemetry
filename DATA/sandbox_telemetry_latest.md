# sandbox_telemetry_parse — 2026-11-24 08:12:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2201046 lines=4879
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4864 |
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
| `chromeBrowserPssKb` | {'int': 4864} |
| `chromeGpuPssKb` | {'int': 4864} |
| `chromeOtherPssKb` | {'int': 4864} |
| `chromeProcesses` | {'int': 4864} |
| `chromeProfiles` | {'int': 4864} |
| `chromeRendererMaxPssKb` | {'int': 4864} |
| `chromeRendererPssKb` | {'int': 4864} |
| `chromeRenderers` | {'int': 4864} |
| `chromeTabs` | {'int': 4864} |
| `chromeTabsProbedProfiles` | {'int': 4864} |
| `chromeUtilityPssKb` | {'int': 4864} |
| `desktopPssKb` | {'int': 4864} |
| `hostPssKb` | {'int': 4864} |
| `kind` | {'str': 4864} |
| `memAvailableKb` | {'int': 4864} |
| `memTotalKb` | {'int': 4864} |
| `otherPssKb` | {'int': 4864} |
| `processes` | {'int': 4864} |
| `pssFallbackProcesses` | {'int': 4864} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
