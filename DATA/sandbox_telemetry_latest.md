# sandbox_telemetry_parse — 2026-11-24 09:07:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2219591 lines=4920
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4905 |
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
| `chromeBrowserPssKb` | {'int': 4905} |
| `chromeGpuPssKb` | {'int': 4905} |
| `chromeOtherPssKb` | {'int': 4905} |
| `chromeProcesses` | {'int': 4905} |
| `chromeProfiles` | {'int': 4905} |
| `chromeRendererMaxPssKb` | {'int': 4905} |
| `chromeRendererPssKb` | {'int': 4905} |
| `chromeRenderers` | {'int': 4905} |
| `chromeTabs` | {'int': 4905} |
| `chromeTabsProbedProfiles` | {'int': 4905} |
| `chromeUtilityPssKb` | {'int': 4905} |
| `desktopPssKb` | {'int': 4905} |
| `hostPssKb` | {'int': 4905} |
| `kind` | {'str': 4905} |
| `memAvailableKb` | {'int': 4905} |
| `memTotalKb` | {'int': 4905} |
| `otherPssKb` | {'int': 4905} |
| `processes` | {'int': 4905} |
| `pssFallbackProcesses` | {'int': 4905} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
