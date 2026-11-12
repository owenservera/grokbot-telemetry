# sandbox_telemetry_parse — 2026-11-12 01:42:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1915531 lines=4241
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4232 |
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
| `chromeBrowserPssKb` | {'int': 4232} |
| `chromeGpuPssKb` | {'int': 4232} |
| `chromeOtherPssKb` | {'int': 4232} |
| `chromeProcesses` | {'int': 4232} |
| `chromeProfiles` | {'int': 4232} |
| `chromeRendererMaxPssKb` | {'int': 4232} |
| `chromeRendererPssKb` | {'int': 4232} |
| `chromeRenderers` | {'int': 4232} |
| `chromeTabs` | {'int': 4232} |
| `chromeTabsProbedProfiles` | {'int': 4232} |
| `chromeUtilityPssKb` | {'int': 4232} |
| `desktopPssKb` | {'int': 4232} |
| `hostPssKb` | {'int': 4232} |
| `kind` | {'str': 4232} |
| `memAvailableKb` | {'int': 4232} |
| `memTotalKb` | {'int': 4232} |
| `otherPssKb` | {'int': 4232} |
| `processes` | {'int': 4232} |
| `pssFallbackProcesses` | {'int': 4232} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
