# sandbox_telemetry_parse — 2026-11-12 15:29:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2197024 lines=4863
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4854 |
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
| `chromeBrowserPssKb` | {'int': 4854} |
| `chromeGpuPssKb` | {'int': 4854} |
| `chromeOtherPssKb` | {'int': 4854} |
| `chromeProcesses` | {'int': 4854} |
| `chromeProfiles` | {'int': 4854} |
| `chromeRendererMaxPssKb` | {'int': 4854} |
| `chromeRendererPssKb` | {'int': 4854} |
| `chromeRenderers` | {'int': 4854} |
| `chromeTabs` | {'int': 4854} |
| `chromeTabsProbedProfiles` | {'int': 4854} |
| `chromeUtilityPssKb` | {'int': 4854} |
| `desktopPssKb` | {'int': 4854} |
| `hostPssKb` | {'int': 4854} |
| `kind` | {'str': 4854} |
| `memAvailableKb` | {'int': 4854} |
| `memTotalKb` | {'int': 4854} |
| `otherPssKb` | {'int': 4854} |
| `processes` | {'int': 4854} |
| `pssFallbackProcesses` | {'int': 4854} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
